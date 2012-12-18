require 'sinatra'

set :environment, :production
set :public_folder, File.expand_path('public', File.dirname(__FILE__))
enable :static

get "/" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, "/index.html"))
end

get "/*" do
  response.headers['Cache-Control'] = 'public, max-age=300'
  File.read(File.join(settings.public_folder, params[:splat][0] + "/index.html"))
end
