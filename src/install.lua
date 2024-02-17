local os = require("os")

local ARCH_REPOSITORY_PACKAGES = { "alacritty", "i3", "kitty" }
local AUR_REPOSITORY_PACKAGES = { "yay", "vscodium-bin" }

function install_packages()
  for _, package in ipairs(ARCH_REPOSITORY_PACKAGES) do
    os.execute(string.format("sudo pacman -S %s", package))
  end
end

function install_aur_packages()

end
