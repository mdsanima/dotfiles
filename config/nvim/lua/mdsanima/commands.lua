-- General commands.  The commands are loaded on demand.  This is a good place
-- to put commands that you want to run on every startup.

-- Example command
local mdsanima = {}

function mdsanima.hello()
    print("Hello world from the example command on MDSANIMA")
end

vim.api.nvim_create_user_command("HelloWorld", function()
    mdsanima.hello()
end, {})

return mdsanima
