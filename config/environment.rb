require 'bundler'
require 'tty-prompt'
require 'faker'
require 'table_print'

Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'
