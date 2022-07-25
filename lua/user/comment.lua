local status_ok, impatient = pcall(require, "Comment")
if not status_ok then
  return
end
require('Comment').setup()
