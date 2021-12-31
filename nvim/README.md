# Neovim Configuration

Configuration for Neovim 0.5 or greater. Written in lua, with minimal file separation

## Plugins

Plugins installed using Packer.

View installed plugins [here](./lua/plugins.lua)

| Plugin | Purpose | 
| --- | --- | 
| nvim-lspconfig | Native Lsp Configuration |
| nvim-treesitter | Parsing, Indendation Language Specifics |
| nvim-telescope | Telescope _(mainly for file searching)_ |
| nvim-lualine | Advanced Status Line | 
| indent-blankline | show indentation markers |
| nvim-cmp | Completions ftw |
| cmp-`[nvim-lsp, path, buffer, cmdline]` | completion sources |
| rust-tools.nvim | enhancement for rust_analyzer | 
| gitsigns.nvim | Git information in sidebar | 
| nvim-autopairs | Auto close parenthesis, etc... |

## Language Servers

- Pyright
- Bash Language Server
- TS Server
- Rust Analyzer
- Terraform-Ls
- Gopls

