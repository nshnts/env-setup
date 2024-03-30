#!/usr/bin/env bash

DIR="$HOME/apps"
GO_BLOB="go1.22.1"

if [ ! -d "$DIR/go" ]; then
  echo "Proceeding to setup golang here: $DIR"
  echo "For the latest setup instructions, see https://go.dev/doc/install"
else
  echo "Aborting, because golang already available here: $DIR/go"
  exit
fi

if [[ "$(uname -s)" == "Darwin" && "$(uname -m)" == "arm64" ]]; then
  echo "macOS (arm64) detected. "
  GO_BLOB="$GO_BLOB.darwin-amd64.tar.gz"
else
  echo "Linux (amd64) detected. "
  GO_BLOB="$GO_BLOB.linux-amd64.tar.gz"
fi

mkdir -p $DIR && cd $DIR
GO_URL="https://go.dev/dl/$GO_BLOB"
echo "Downloading $GO_URL ..."
wget $GO_URL
tar xvf $GO_BLOB
rm $GO_BLOB

echo "---"
echo "Installation complete. Add $DIR/go/bin to \$PATH"
