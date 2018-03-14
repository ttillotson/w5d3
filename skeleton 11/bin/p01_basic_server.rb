require 'rack'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-type'] = 'text/html'
  res.write("<p>#{env['REQUEST_PATH']}</p>")
  res.finish
end

Rack::Server.start(
  app: app,
  Port: 3000
)
