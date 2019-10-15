class Conversation
	attr_accessor :file_name

	def initialize(file_name)
		@file_name = file_name
	end

	def read
		file = File.open(@file_name)
		data = file.read
		file.close
		return data
	end

	def print
		is_advisor = true
		arr = IO.readlines(@file_name)
		for line in arr
			if (line.start_with? "ADVISOR")
				is_advisor = true
			elsif (line.start_with? "STUDENT")
				is_advisor = false
			end
					
			if is_advisor
				puts line
			end
		end
	end
end


print_advisor = Conversation.new("conversation.txt")
print_advisor.print