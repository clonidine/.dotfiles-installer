local utils = require("utils")

local DEFAULT_CONFIG_PATH = "~/config"

local BASE_REPOSITORY = "https://github.com/clonidine/.dotfiles.git"
local BASE_REPOSITORY_NAME = ".dotfiles"

M = {
  load = function()
    utils.create_dir(DEFAULT_CONFIG_PATH)

    utils.clone_repository(BASE_REPOSITORY)

    utils.copy_config(string.format("%s", BASE_REPOSITORY_NAME), DEFAULT_CONFIG_PATH)
  end
}

return M
