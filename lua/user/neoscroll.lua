local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
  return
end
neoscroll.setup()
local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
t['<A-k>'] = {'scroll', {'-vim.wo.scroll', 'true', '50'}}
t['<A-j>'] = {'scroll', { 'vim.wo.scroll', 'true', '50'}}

require('neoscroll.config').set_mappings(t)
