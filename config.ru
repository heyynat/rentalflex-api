require "rack/unreloader"
require_relative './app'

Unreloader = Rack::Unreloader.new { App }
Unreloader.require "./app"

run App
