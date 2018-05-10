require "bundler/setup"
require "itamae/plugin/recipe/grafana"

require "yaml"
require "itamae/node"

require "serverspec"
require "docker"

set :backend, :docker
set :docker_image, ENV["DOCKER_IMAGE"]
set :docker_container, ENV["DOCKER_CONTAINER"]

def node
  return @node if @node
  hash = YAML.load_file("#{__dir__}/../recipes/node.yml")
  @node = Itamae::Node.new(hash, Specinfra.backend)
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
