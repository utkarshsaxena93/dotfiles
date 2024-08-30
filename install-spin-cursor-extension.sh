#!/bin/bash

cat <<EOF > "/tmp/private-extensions.json"
{
  "github": {
    "spin-vscode.vsix": "Shopify/spin-vscode",
    "dev-test-runner.vsix": "Shopify/dev-test-runner"
  }
}
EOF
/usr/local/bin/install-vscode-private-extensions "$(cat /etc/spin/secrets/github_token_shopify)" "/tmp/private-extensions.json" "/home/spin/.cursor-server/extensions"
