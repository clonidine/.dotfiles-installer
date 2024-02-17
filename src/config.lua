local utils = require("./utils.lua")

local DEFAULT_CONFIG_PATH = "~/.config"

local BASE_REPOSITORY = "https://github.com/clonidine/.dotfiles.git"
local BASE_REPOSITORY_NAME = ".dotfiles"

local function copy_config(path_src, path_target)
  os.execute(string.format("cp -r %s/* %s", path_src, path_target))
end

function load()
  -- CREATE CONFIG DIRECTORY IF NOT EXISTS
  utils.create_dir(DEFAULT_CONFIG_PATH)

  -- CLONE REPOSITORY: https://github.com/clonidine/.dotfiles.git
  utils.clone_repository(BASE_REPOSITORY)

  -- COPY CONFIGS FROM BASE REPOSITORY (https://github.com/clonidine/.dotfiles.git) TO CONFIG DIRECTORY
  copy_config(string.format("%s", BASE_REPOSITORY_NAME), DEFAULT_CONFIG_PATH)
end
