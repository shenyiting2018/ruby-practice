class Search
	def search_students(students, query = {})
		# We don't support multiple params search
		if query.length > 1
			puts "You can only specify one query parameter"
			return
		end

		results = Array.new

		# Search with key value pair
		query.each do |key, value|
			for student in students
				if student[key] == value
					results.push(student)
				end
			end
		end

		# If no match, print 
		if results.empty?
			puts "No match is found"
			return 
		end

		# Format the output
		table_content = %{
First Name     Last Name     Phone#}
		results.each do |student|
			data_template = %{
#{student[:firstname]}     #{student[:lastname]}     #{student[:phonenumber]}}
			table_content << data_template
		end
		puts table_content
	end
end
