require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

IMAGES = %w(centos:7)

task :default => :spec

namespace :spec do
  task :all => IMAGES

  IMAGES.each do |image|
    desc "Running tests to #{image}"
    task image do
      tag = "itamae-plugin-#{image.gsub(":","-")}:latest"
      sh "DOCKER_IMAGE=#{tag} bundle exec rspec"
    end
  end
end

namespace :itamae do
  task :all => IMAGES

  IMAGES.each do |image|
    desc "Running itamae to #{image}"
    task image do
      tag = "itamae-plugin-#{image.gsub(":","-")}:latest"
      sh "bundle exec itamae docker --node-yaml=recipes/node.yml recipes/install.rb --image=#{image} --tag #{tag}"
    end
  end
end
