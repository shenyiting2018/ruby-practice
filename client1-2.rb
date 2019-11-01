require 'socket'

begin
    port = ARGV[0]
    ARGV.slice!(0)
    message = ARGV.join(' ')
    socket = TCPSocket.new('127.0.0.1', port)
    socket.write(message)
rescue ArgumentError
    puts "port is not a number"
rescue
    puts "connection error ...exiting...#{$!}"
end

