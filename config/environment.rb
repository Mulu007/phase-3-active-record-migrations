# RACK_ENV is a specific environment variable that is used by the sinatra-activerecord gem to determine which database to connect to: in our environment.rb file, we're specifying that it should use the development database, which is configured in the database.yml file.
ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_relative "../app/models/artist"
