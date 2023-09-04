require "sinatra/activerecord/rake"
require 'active_record'
require './app'

namespace :db do
  task :schema_dump => :environment do
    ActiveRecord::Base.establish_connection(
      adapter: 'postgresql',
      database: 'rentalflex_dev',
      username: 'postgres',
      password: 'postgres',
      host: 'localhost'
    )
    ActiveRecord::SchemaDumper.dump(ActiveRecord::Base.connection, File.open('db/schema.rb', 'w'))
  end
end
