local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end
local bg = vim.opt.background:get()
if (bg == 'light') then
  onedark.setup {
    style = 'light',
    colors = {
      _bg = '#F5F5DC',
      _fg ='#27292e',
      _func='#2d57af'
    },
    highlights = {
      Normal = {bg='$_bg', fg='$_fg'},
      SignColumn = {bg='$_bg'},
      EndOfBuffer = {bg='$_bg'},
      Pmenu = {bg='#dedede'},
      Search = {bg='#dadada', fg='NONE'},
      Visual = {bg='#dfdfdf'},
      ["@punctuation.bracket"] = {fg='#ce0000', fmt='bold'},
      ["@function"] = {fg='$_func', fmt='bold'},
      ["@method"] = {fg='$_func', fmt='bold'},
      ["@string"] = {fg='green'},
      ['@constant'] = {fg='#ad7600'},
      ["@comment"] = {fg='#818187'},
      ["@type"] = {fmt='bold'},
      ["@type.builtin"] = {fmt='bold'},
      ["@operator"] = {fg='#a626a4',fmt='bold'},
      ["@keyword"] = {fmt='bold'},
      ["@punctuation.delimiter"] = {fg='#a626a4',fmt='bold'},
      ["@conditional"] = {fmt='bold'},
      ["@keyword.function"] = {fmt='bold'},
      ["@property"] = {fg='$_fg'},
      ["@variable.builtin"] = {fmt='bold'},
      ["@tag"] = {fg="#e64553", fmt='bold'},
      ["@tag.attribute"] = {fg="#8839ef"},
      ["@parameter"] = {fg="$_func"},
      ['@boolean'] = {fg='#9a6900'},
      MatchParen = {bg= '$_bg'},
      IndentBlanklineChar = { fg = "#918f8d", fmt = "nocombine" },
    }}
end

-- Onedar - Solarized
if (bg == 'dark') then
  onedark.setup {
    style = 'darker',
    colors = {
      _bg = '#002b36',
      _fg ='#769ca5'
    },
    highlights = {
      Normal = {bg='$_bg', fg='$_fg'},
      SignColumn = {bg='$_bg'},
      EndOfBuffer = {bg='$_bg'},
      Search = {bg='#224e54', fg='NONE'},
      Visual = {bg='#243940'},
      ["@method"] = {fg='#268bd2', fmt='bold'},
      ["@function"] = {fg='#268bd2', fmt='bold'},
      ["@constructor"] = {fg='#268bd2', fmt='bold'},
      ["@keyword"] = {fg='#859900', fmt='bold'},
      ["@punctuation.bracket"] = {fg='#e55561'},
      ["@operator"] = {fg='#859900', fmt='bold'},
      ["@punctuation.delimiter"] = {fg='#859900', fmt='bold'},
      ["@type"] = {fg='#b58900', fmt='bold'},
      ["@type.builtin"] = {fg='#b58900', fmt='bold'},
      -- ["@property"] = {fg="#268bd2"},
      ["@parameter"] = {fg="#48b0bd"},
      ['@string'] = {fg='#52b2ab'},
      ["@conditional"] = {fmt='bold'},
      ["@keyword.function"] = {fmt='bold'},
      ["@variable.builtin"] = {fmt='bold'},
      ["@tag"] = {fg="#cf6e3b", fmt='bold'},
      ['@tag.attribute'] = {fg='#b69456'},
      MatchParen = {bg= '$_bg'},
      IndentBlanklineChar = { fg = "#727a7f", fmt = "nocombine" },
    }
  }
end
