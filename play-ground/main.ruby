require 'webrick'

server = WEBrick::HTTPServer.new(Port: 8000)
server.mount_proc '/' do |req, res|
  res.body = 'Hello, World!'
end

trap 'INT' do server.shutdown end
server.start
