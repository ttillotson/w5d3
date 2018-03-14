require 'rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-type'] = 'text/html'
  res.write('Here\'s a response')
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000
)
