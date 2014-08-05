$:.unshift(File.expand_path('../lib', __FILE__))

require 'rspec'
require 'byebug'
require 'conquiro'
require 'vcr'
require 'webmock'

VCR.configure do |c|
  c.configure_rspec_metadata!
  c.cassette_library_dir = 'spec/fixtures/casettes'
  c.hook_into :webmock
end
