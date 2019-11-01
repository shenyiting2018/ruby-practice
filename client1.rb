require 'socket'

class String
	def is_integer?
		/\A\d+\z/ =~ self
	end
end

if ARGV.size < 2
	puts "ports or message missing"
else
	begin
		port = ARGV[0]
		raise ArgumentError unless port.is_integer?
		ARGV.slice!(0)
		message = ARGV.join(' ')
		socket = TCPSocket.new('127.0.0.1', port)
		socket.write(message)
	rescue ArgumentError
		puts "port is not a number"
	rescue
		puts "connection error ...exiting...#{$!}"
	end
end

def raise_exception
	begin
		puts "before raise"
		raise "i created an error on purpose"
		puts "after raise"
	rescue
		puts "no worries"
	end
	puts "after the begin/end block"
end

#raise_exception

def inverse(n)
	raise ArgumentError, 'Argument is not a number' unless n.is_a? Numeric
	1.0 / n
end

puts inverse(4)
#puts inverse("love")