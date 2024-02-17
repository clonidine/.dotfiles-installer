local config = require("config")
local install = require("install")

function Start()
    install.install_yay()
    install.install_packages()

    config.load()
end

Start()