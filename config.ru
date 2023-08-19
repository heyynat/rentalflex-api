require 'rack/unreloader'

Unreloader = Rack::Unreloader.new{RentalFlex}
Unreloader.require './app.rb'

run Unreloader
Rack::Unreloader.new(handle_reload_errors: true){RentalFlex}
