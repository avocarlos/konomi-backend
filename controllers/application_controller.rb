class ApplicationController < Sinatra::Base
  configure do
    set :bind, '0.0.0.0'
    set :port, 8001
    set :server, 'thin'
  end

  get '/' do
    "Hello world, it's #{Time.now} at the server!"
  end
end
