require 'bundler/setup'
Bundler.require
require 'active_record'
require 'rake'
require_all 'app/models'
require pry

ENV["PLAYLISTER_ENV"] ||= "development"

ActiveRecord::Base.establish_connection(ENV["PLAYLISTER_ENV"].to_sym)

ActiveRecord::Base.logger = nil

if ENV["PLAYLISTER_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end
