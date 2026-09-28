#!/bin/sh
# Installs Erlangly on a Linux server (Ubuntu or Debian, x86-64 or ARM64):
#
#   curl -fsSL https://get.erlangly.com | sh
#
# Installs Docker if it's missing, then the `erlangly` command, then starts Erlangly on port 80.
# Settings (environment variables):
#   TLS_DOMAIN=wfm.example.com   serve HTTPS with a Let's Encrypt certificate for this domain
#   ERLANGLY_URL=https://wfm.example.com   the address people open, when your own HTTPS proxy is in front
#   ERLANGLY_HTTP_PORT=8080      publish on another port (default 80)
#   ERLANGLY_IMAGE_TAR=file.tar  install from a saved image instead of the registry (offline, testing)
#   ERLANGLY_REGISTRY_USER/_TOKEN  sign in to a private registry first (read-only token)
#   ERLANGLY_SOURCE=url          where to fetch the `erlangly` command from (default https://get.erlangly.com)
set -eu

# Everything is inside main, run on the last line: if the download is cut short, nothing runs.
main() {
  ERLANGLY_SOURCE=${ERLANGLY_SOURCE:-https://get.erlangly.com}
  export ERLANGLY_INSTALL_STARTED=${ERLANGLY_INSTALL_STARTED:-$(date +%s)}

  say() { printf '\033[1m%s\033[0m\n' "$*"; }
  fail() { printf 'Erlangly install failed: %s\n' "$*" >&2; exit 1; }

  [ "$(uname -s)" = Linux ] || fail "Erlangly installs on Linux. On a Mac or Windows PC, use a Linux server or VM."
  case "$(uname -m)" in
    x86_64 | amd64 | aarch64 | arm64) ;;
    *) fail "unsupported processor $(uname -m): Erlangly runs on x86-64 and ARM64" ;;
  esac

  if [ "$(id -u)" -eq 0 ]; then sudo=""; else sudo="sudo"; command -v sudo > /dev/null || fail "run this as root"; fi

  if ! command -v docker > /dev/null; then
    log=$(mktemp)
    say "Installing Docker…"
    # Package mirrors have blips: try once more after a pause before giving up.
    if ! curl -fsSL https://get.docker.com | $sudo sh > "$log" 2>&1; then
      say "Docker didn't install; trying again in 20 seconds…"
      sleep 20
      curl -fsSL https://get.docker.com | $sudo sh > "$log" 2>&1 ||
        { tail -n 20 "$log" >&2; fail "couldn't install Docker, twice (log above). Check this server can reach download.docker.com and its package mirror."; }
    fi
  fi
  $sudo systemctl enable --now docker > /dev/null 2>&1 || true

  say "Installing the erlangly command…"
  cli=$(mktemp)
  curl -fsSL "$ERLANGLY_SOURCE/erlangly" -o "$cli" || fail "couldn't download the erlangly command from $ERLANGLY_SOURCE"
  { bash -n "$cli" && tail -n 1 "$cli" | grep -q '^# end of erlangly'; } || fail "the erlangly command didn't download completely; try again"
  $sudo install -m 755 "$cli" /usr/local/bin/erlangly
  rm -f "$cli"

  if [ -n "$sudo" ]; then
    exec sudo --preserve-env=ERLANGLY_INSTALL_STARTED,ERLANGLY_IMAGE_TAR,ERLANGLY_REGISTRY_USER,ERLANGLY_REGISTRY_TOKEN,ERLANGLY_IMAGE,ERLANGLY_TAG,ERLANGLY_HTTP_PORT,ERLANGLY_HTTPS_PORT,TLS_DOMAIN,ERLANGLY_URL \
      /usr/local/bin/erlangly install
  fi
  exec /usr/local/bin/erlangly install
}

main "$@"
