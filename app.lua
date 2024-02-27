local lapis = require("lapis")
local app = lapis.Application()

app:get("/", function()
  return { json = {hello = "world"}}
end)

return app
