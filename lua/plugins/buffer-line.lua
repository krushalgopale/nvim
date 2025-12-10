return {
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local bufferline = require("bufferline")
      bufferline.setup {
        options = {
          show_buffer_close_icons = true,
          separator_style = { "", "" },
          always_show_bufferline = true,
          style_preset = bufferline.style_preset.no_italic,
          numbers = function(opts)
            return string.format("%s", opts.ordinal)
          end,
          custom_filter = function(buf_number)
            -- filter out filetypes you don't want to see
            if vim.bo[buf_number].filetype ~= "qf" then
              return true
            end
          end,
          offsets = {
            {
              filetype = "snacks_layout_box",
              text = "",
              highlight = "EcovimNvimTreeTitle",
              text_align = "center",
              separator = false,
            },
          },
        },
      }
    end,
  }
}
