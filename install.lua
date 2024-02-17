local os = require("os")

DEFAULT_CONFIG_PATH = "~/.config"

BASE_REPOSITORY = "https://github.com/clonidine/.dotfiles.git"
BASE_REPOSITORY_NAME = ".dotfiles"

local function dir_exists(file)
  local ok, err, code = os.rename(file, file)
  local permission_denied = 13
  if not ok then
    if code == permission_denied then
      return true
    end
  end
  return ok, err
end

local function create_dir(name)
  if not dir_exists(name) then
    os.execute(string.format("mkdir %s", name))
  end
end

local function clone_repository()
  os.execute(string.format("git clone %s", BASE_REPOSITORY))
end

local function copy_config(path_src, path_target)
  os.execute(string.format("cp -r %s/* %s", path_src, path_target))
end

-- CREATE CONFIG DIRECTORY IF NOT EXISTS
create_dir(DEFAULT_CONFIG_PATH)

-- CLONE REPOSITORY: https://github.com/clonidine/.dotfiles.git
clone_repository()

-- COPY CONFIGS FROM BASE REPOSITORY (https://github.com/clonidine/.dotfiles.git) TO CONFIG DIRECTORY
copy_config(string.format("%s", BASE_REPOSITORY_NAME), DEFAULT_CONFIG_PATH)
