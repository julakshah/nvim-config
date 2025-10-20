local root_files = {
  ".git",
}

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "stevearc/conform.nvim",
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",
    "Plug 'L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "j-hui/fidget.nvim",
  },

  config = function()
    -- setup conform
    require("conform").setup({
      formatters_by_ft = {
        python = { "black" },
        markdown = { "prettier" },
      },
    })
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        require("conform").format({ bufnr = args.buf })
      end,
    })
    -- local variables for completion
    local cmp = require("cmp")
    local cmp_lsp = require("cmp_nvim_lsp")
    local capabilities = vim.tbl_deep_extend(
      "force",
      {},
      vim.lsp.protocol.make_client_capabilities(),
      cmp_lsp.default_capabilities())

    -- configure fidget
    require("fidget").setup({})
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { -- Find available lsp packages: https://mason-registry.dev/registry/list
        "lua_ls",
        "clangd",
        "rust_analyzer",
        "jdtls",
        "marksman",
      },
      handlers = {
        function(server_name) -- default handler
          require("lspconfig")[server_name].setup {
            capabilities = capabilities
          }
        end,
        -- add more specific lsp configs here
      }

    })

    local cmp_select = { behavior = cmp.SelectBehavior.Select } -- prevent autoinsertion while choosing completion

    --setup cmp for autocompletion
    cmp.setup({
      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- confirms currently selected item
        ["<C-Space>"] = cmp.mapping.complete(), -- opens the autocomplete menu
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }, -- For luasnip users.
      }, {
         { name = 'buffer' },
      })
    })
    -- set the error styling
    vim.diagnostic.config({
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })
   -- Show line diagnostics automatically when hovering
   vim.o.updatetime = 250
   vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
  end
}
