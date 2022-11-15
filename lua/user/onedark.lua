local status_ok, onedark = pcall(require, "onedark")
if not status_ok then
  return
end
local bg = vim.opt.background:get()
if (bg == 'light') then
  onedark.setup {
    style = 'light',
    colors = {
      _bg = '#f8f0dc',
      _fg ='#27292e'
    },
    highlights = {
      Normal = {bg='$_bg', fg='$_fg'},
      SignColumn = {bg='$_bg'},
      EndOfBuffer = {bg='$_bg'},
      Pmenu = {bg='#dedede'},
      Search = {bg='#dadada', fg='NONE'},
      Visual = {bg='#dfdfdf'},
      ["@punctuation.bracket"] = {fg='#ce0000', fmt='bold'},
      ["@function"] = {fg='#3361c3', fmt='bold'},
      ["@method"] = {fg='#3361c3', fmt='bold'},
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
      MatchParen = {bg= '$_bg'}
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
      ["@punctuation.bracket"] = {fg='#ae3b26', fmt='bold'},
      ["@operator"] = {fg='#859900', fmt='bold'},
      ["@punctuation.delimiter"] = {fg='#859900', fmt='bold'},
      ["@type"] = {fg='#b58900', fmt='bold'},
      ["@type.builtin"] = {fg='#b58900', fmt='bold'},
      ["@property"] = {fg="#268bd2"},
      ['@string'] = {fg='#52b2ab'},
      ["@conditional"] = {fmt='bold'},
      ["@keyword.function"] = {fmt='bold'},
      ["@variable.builtin"] = {fmt='bold'},
      MatchParen = {bg= '$_bg'}
    }
  }
end
