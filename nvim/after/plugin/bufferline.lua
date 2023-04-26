local status, bufferline = pcall(require, 'bufferline')
if not status then return end

local colors = {
  bg = '#282c34',
  bg_dim = '#333842',
  bg_light = '#444b59',
  black = '#222222',
  white = '#abb2bf',
  gray = '#868c96',
  red = '#e06c75',
  green = '#98c379',
  yellow = '#e5c07b',
  blue = '#61afef',
  purple = '#7c7cff', -- tweaked to match custom color
  teal = '#56b6c2',
}

bufferline.setup({
  highlights = {
    fill = { bg = colors.bg },
    tab = { bg = colors.bg_dim, fg = colors.gray },
    buffer_selected = { bold = false },
    diagnostic_selected = { bold = true },
    info_selected = { bold = true },
    info_diagnostic_selected = { bold = true },
    warning_selected = { bold = true },
    warning_diagnostic_selected = { bold = true },
    error_selected = { bold = true },
    error_diagnostic_selected = { bold = true },
  },
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "Directory",
        separator = true -- use a "true" to enable the default, or set your own character
      }
    },
    show_close_icon = false,
    diagnostics = 'nvim_lsp',
    max_prefix_length = 8,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      if context.buffer:current() then
        return ''
      end
      if level:match('error') then
        return ' ' .. '✘'
      elseif level:match('warning') then
        return ' ' .. '▲'
      end
      return ''
    end,
    custom_filter = function(buf_number, buf_numbers)
      if vim.bo[buf_number].filetype ~= 'oil' then
        return true
      end
    end,
  },
})
