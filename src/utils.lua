local os = require("os")

M = {
  copy_config = function(path_src, path_target)
    os.execute(string.format("cp -r %s/* %s", path_src, path_target))
  end,

  create_dir = function(name)
    os.execute(string.format("mkdir -p %s", name))
  end,

  clone_repository = function(repository)
    os.execute(string.format("git clone %s", repository))
  end
}

return M
