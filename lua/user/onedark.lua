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
      ["@punctuation.bracket"] = {fg='#ce0000', fmt='bold'},
      ["@function"] = {fg='#3361c3', fmt='bold'},
      ["@method"] = {fg='#3361c3', fmt='bold'},
      ["@string"] = {fg='green'},
      ['@constant'] = {fg='#ad7600'},
      ["@comment"] = {fg='#818187'},
      ["@type"] = {fmt='bold'},
      ["@operator"] = {fmt='bold'},
      ["@keyword"] = {fmt='bold'},
      ["@punctuation.delimiter"] = {fg='#a626a4',fmt='bold'},
      Pmenu = {bg='#dedede'},
      Search = {bg='#dadada', fg='NONE'},
      Visual = {bg='#dfdfdf'},
      ["@property"] = {fg='#b20245'},
      -- MatchParen = {bg= '$_bg', fmt='bold', fg='black'}
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
      ["@punctuation.bracket"] = {fg='#da4a30', fmt='bold'},
      ["@operator"] = {fg='#859900', fmt='bold'},
      ["@punctuation.delimiter"] = {fg='#859900', fmt='bold'},
      ["@type"] = {fg='#b58900', fmt='bold'},
      ["@property"] = {fg="#268bd2"},
      ['@string'] = {fg='#52b2ab'}
    }
  }
end
