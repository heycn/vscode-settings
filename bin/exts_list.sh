#!/usr/bin/env bash
timestamp=$(date "+%Y-%m-%d %H:%M:%S")
rm .vscode/my_vscode_exts.sh
echo "# Generated item: $timestamp" > .vscode/my_vscode_exts.sh
code --list-extensions | sed -e 's/^/code --install-extension /' >> .vscode/my_vscode_exts.sh
echo " >> .vscode/my_vscode_exts.sh"
