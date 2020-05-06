require 'rspec-puppet'
require 'rspec-puppet-facts'
include RspecPuppetFacts

base_path = File.expand_path("../..", Dir.pwd)

RSpec.configure do |c|
  c.module_path     = File.join(base_path, 'modules')
  c.manifest_dir    = File.join(base_path, 'manifests')
  c.manifest        = File.join(base_path, 'manifests', 'site.pp')
  c.environmentpath = File.join(Dir.pwd, 'spec')
end
