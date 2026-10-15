#!/bin/sh
set -eu
brew update
tap_dir="$(brew --repository)/Library/Taps/jtaizhang/homebrew-hmon-ci"
mkdir -p "$tap_dir/Formula/h"
cp /work/Formula/h/hmon.rb "$tap_dir/Formula/h/"
git -C "$tap_dir" init
git -C "$tap_dir" add Formula/h/hmon.rb
git -C "$tap_dir" -c user.name="Jiatai Zhang" -c user.email="49481083+jtaizhang@users.noreply.github.com" commit -m "hmon 0.2.7 (new formula)"
brew trust jtaizhang/hmon-ci
brew install -y -s -v --include-test jtaizhang/hmon-ci/hmon
brew test jtaizhang/hmon-ci/hmon
brew style jtaizhang/hmon-ci/hmon
brew audit --strict jtaizhang/hmon-ci/hmon
