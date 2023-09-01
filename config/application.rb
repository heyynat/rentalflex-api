require "active_record"
require "yaml"

class Application < Sinatra::Base
  configure do
    enable :logging

    db_config = YAML.load_file("database.yml")["development"]
    ActiveRecord::Base.establish_connection(db_config)
  end
end
