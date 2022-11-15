local status_ok, dapui = pcall(require, "dapui")
if not status_ok then
  return
end
local dap = require('dap');
dapui.setup({});
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

local bg = vim.opt.background:get()

if (bg == 'light') then
end

  -- nvim dap ui
vim.cmd("hi  link DapUIVariable Normal")
vim.cmd("hi  DapUIScope guifg=#3361c3")
vim.cmd("hi  DapUIType guifg=#D484FF")
vim.cmd("hi  link DapUIValue Normal")
vim.cmd("hi  DapUIModifiedValue guifg=#3361c3 gui=bold")
vim.cmd("hi  DapUIDecoration guifg=#3361c3")
vim.cmd("hi  DapUIThread guifg=#a626a4")
vim.cmd("hi  DapUIStoppedThread guifg=#3361c3")
vim.cmd("hi  link DapUIFrameName Normal")
vim.cmd("hi  DapUISource guifg=#D484FF")
vim.cmd("hi  DapUILineNumber guifg=#3361c3")
vim.cmd("hi  link DapUIFloatNormal NormalFloat")
vim.cmd("hi  DapUIFloatBorder guifg=#3361c3")
vim.cmd("hi  DapUIWatchesEmpty guifg=#F70067")
vim.cmd("hi  DapUIWatchesValue guifg=#a626a4")
vim.cmd("hi  DapUIWatchesError guifg=#F70067")
vim.cmd("hi  DapUIBreakpointsPath guifg=#3361c3")
vim.cmd("hi  DapUIBreakpointsInfo guifg=#a626a4")
vim.cmd("hi  DapUIBreakpointsCurrentLine guifg=#a626a4 gui=bold")
vim.cmd("hi  link DapUIBreakpointsLine DapUILineNumber")
vim.cmd("hi  DapUIBreakpointsDisabledLine guifg=#424242")
vim.cmd("hi  link DapUICurrentFrameName DapUIBreakpointsCurrentLine")
vim.cmd("hi  DapUIStepOver guifg=#3361c3")
vim.cmd("hi  DapUIStepInto guifg=#3361c3")
vim.cmd("hi  DapUIStepBack guifg=#3361c3")
vim.cmd("hi  DapUIStepOut guifg=#3361c3")
vim.cmd("hi  DapUIStop guifg=#F70067")
vim.cmd("hi  DapUIPlayPause guifg=#a626a4")
vim.cmd("hi  DapUIRestart guifg=#a626a4")
vim.cmd("hi  DapUIUnavailable guifg=#424242")
