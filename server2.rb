require 'socket'

if ARGV.size != 1
	puts "please specify a port"
	exit
else
	port = ARGV[0]
end

puts "listening at port #{port}"

server = TCPServer.new("127.0.0.1", port)

Socket.accept_loop(server) do |connection|
	request  connection.gets

	request = request.gsub(/GET\ \//, '').gsub(/\ HTTP.*/,'')
	filename = request.chomp

	if filename == ""
		filename = "index.html"
	end

	begin
		f = File.open(filename, 'r')
		content = f.read()

		connection.print "HTTP/1.1 200OK\r\nContent-type:text/html\r\n"
		connection.print "Content-Length: #{f.size}\r\n"
		connection.print "\r\n"


		connection.print content
	rescue Error::ENOENT
		puts "requested file #{filename} not found"

		connection.print "HTTP/1.1 404 Not Found\r\n"
		connection.print "Server: myserver\r\n"
		connection.print "Connection: close\r\n"
		connection.print "\r\n"

		connection.print "sorry, i could not find your file..."
	end
	connection.close
end