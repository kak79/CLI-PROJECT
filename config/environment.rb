require 'dotenv/load'
require "bundler/setup"
Bundler.require

require_relative '../lib/cli.rb'
require_relative '../lib/api.rb'
require_relative '../lib/photographer.rb'
