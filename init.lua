--mod-version:3.0
local config = require "core.config"
local common = require "core.common"
local core = require "core"
local os = require "os"

-- TODO: Add config support
-- Options:
-- keep_plugins: <bool> -- Whether to keep plugins installed after delinking them | DEFAULT: true
-- plugins: <table: <string>=<float/int> > -- List of enabled plugins

-- Check if git is installed and if not exit
local git = {os.execute("git help >/dev/null 2>&1")}
if git[3] ~= 0 then
    core.error("git is not installed, please install git to use bulb")
    os.exit()
end

config.plugins.bulb = common.merge {
    keep_plugins = true,
    plugins = {} -- Format: <string>/{string + extra bs (see docs)} = <float/int>
}

for _, plugin in ipairs(config.plugins.bulb.plugins) do
    core.log "plugin: "..plugin[1].."\n".."d"
end

local git_repo = "https://github.com/lite-xl/lite-xl-plugins"

-- local function exists(file)
--    local ok, err, code = os.rename(file, file)
--    if not ok then
--       if code == 13 then
--          -- Permission denied, but it exists
--          return true
--       end
--    end
--    return ok, err
-- end

-- if not exists

-- local bulb = {}

-- function bulb.validate_plugins()
--     for _, name in ipairs(config.plugins.bulb.plugins) do
        
--     end
-- end



---@param string plugin
-- function bulb(plugin)
    
-- end
