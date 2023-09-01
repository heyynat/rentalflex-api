require "sinatra/base"
require "sinatra/activerecord"
require_relative "api/models/user"
require_relative "config/application"


class App < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get "/" do
    "Hello, world!"
  end

  get "/api/users" do
    content_type :json
    User.all.to_json
  end

  post "/api/users" do
    content_type :json
    data = JSON.parse(request.body.read)
    User.create(data).to_json
  end

  get "/api/users/:id" do
    content_type :json
    User.find(params[:id]).to_json
  end
end
