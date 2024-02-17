local os = require("os")

function create_dir(name)
  os.execute(string.format("mkdir -p %s", name))
end

function clone_repository(repository)
  os.execute(string.format("git clone %s", repository))
end
