# onyx-plugin-python

Extension for Onyx tools that adds syntax highlighting for Python.

Uses [tree_sitter_python](https://github.com/tree-sitter/tree-sitter-python).

## Building
1. Compile `tree_sitter_python.dll`
2. Copy `config.json`, `src/*.py`, `tree_sitter_python.dll` and `queries` to nitro's plugins/python/ folder
