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
      ["@punctuation.bracket"] = {fg='#ce0000'},
      ["@function"] = {fg='#3361c3', fmt='bold'},
      ["@method"] = {fg='#3361c3', fmt='bold'},
      ["@string"] = {fg='green'},
      ["@parameter"] = {fg='#871b5a'},
      ['@constant'] = {fg='#ad7600'},
      ["@comment"] = {fg='#818187'},
      Pmenu = {bg='#dedede'},
      Search = {bg='#dadada', fg='NONE'},
      Visual = {bg='#dfdfdf'},
      ["@property"] = {fg='#b20245'},
      -- MatchParen = {bg= '$_bg', fmt='bold', fg='black'}
    }}
end
if (bg == 'dark') then
  onedark.setup {
    style = 'darker',
    highlights = {
      ["@constructor"] = {fg='#b69456'},
      ["@punctuation.bracket"] = {fg='#d45b5b'},
      ["@operator"] = {fg='#d45b5b'},
      ["@string"] = {fg='green'},
      ["@parameter"] = {fg='#bfbe55'},
      MatchParen = {bg= '#1f2329', fmt='bold', fg='#c09980'},
      Search = {bg='#464a54', fg='NONE'}
    }
  }
end
