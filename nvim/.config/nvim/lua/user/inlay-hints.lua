local status_ok, inlay_hints = pcall(require, "inlay-hints")
if not status_ok then
  return
  print("inlay-hints not found")
end

inlay_hints.setup()
