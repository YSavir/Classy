require 'bundler/setup'
Bundler.require :default, :test

require_relative '../lib/classy'

RSpec.configure do |c|
  c.fail_fast = true
  c.color = true
end
