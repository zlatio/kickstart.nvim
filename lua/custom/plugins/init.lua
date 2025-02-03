-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

if vim.g.vscode then
  return {}
else
  return {
    -- Light/Dark autoswitch
    'cormacrelf/dark-notify',
    -- LSP for Ruby
    'mihyaeru21/nvim-ruby-lsp',
    -- Copilot
    'github/copilot.vim',

    -- Treesitter context
    {
      'nvim-treesitter/nvim-treesitter-context',
      dependencies = { 'nvim-treesitter/nvim-treesitter' },
      config = function()
        require('treesitter-context').setup()
      end,
    },
  }
end
