local utils = require("utils")

local PACKAGE_NAMES = { "alacritty", "i3", "kitty", "vscodium-bin", "rust" }

M = {
  install_yay = function()
    local yay_git_url = "https://aur.archlinux.org/yay.git";

    utils.clone_repository(yay_git_url)

    os.execute("cd yay && makepkg -si")
  end,

  install_packages = function()
    for _, package in ipairs(PACKAGE_NAMES) do
      os.execute(string.format("yay -S %s", package))
    end
  end
}

return M
