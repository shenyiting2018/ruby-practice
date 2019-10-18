require 'socket'

puts "listening rom host: localhost at port 4444..."

Socket.tcp_server_loop(4444) do |connection|
	puts connection.read
	connection.close
end

