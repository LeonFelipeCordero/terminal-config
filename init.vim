set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

lua << EOF
require'nvim-lsp-installer'.setup {
	ensure_installed = { 
		"bashls",
		"cssls",
		"cssmodules_ls",
		"dockerls",
		"eslint",
		"elixirls",
		"golangci_lint_ls",
		"gopls",
		"graphql",
		"groovyls",
		"html",
		"jsonls",
		"jdtls",
		"quick_lint_js",
		"kotlin_language_server",
		"sumneko_lua",
		"prosemd_lsp",
		"jedi_language_server",
		"pylsp",
		"sqlls",
		"tailwindcss",
		"terraformls",
		"tflint",
		"tsserver",
		"volar",
		"vuels",
		"lemminx",
		"yamlls",
	},
  automatic_installation = true, 
	ui = {
    icons = {
      server_installed = "‚úì",
			server_pending = "‚ûú",
      server_uninstalled = "‚úó"
		}
  }
}
EOF
