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
			puts "Start querying students, key=#{key}, value=#{value}"
			for student in students
				if student[key] == value
					results.push(student)
				end
			end
		end
		puts "Complete searching, formatting..."
		# Format the output
		table_content = %{
First Name     Last Name     Phone#}
		results.each do |student|
			data_template = %{
#{student[:firstname]}     #{student[:lastname]}     #{student[:phonenumber]}}
			table_content << data_template
		end
		puts "Completed"
		puts table_content
		return table_content
	end
end

students = [
    {:firstname => "John", :lastname => "LastnameJohn", :phonenumber => 123456789},
    {:firstname => "Ken", :lastname => "Lastnameken",:phonenumber => 456734233},
    {:firstname => "Marisa", :lastname => "lastnamemarisa", :phonenumber => 443234567},
    {:firstname => "Ken", :lastname => "Kenlastname", :phonenumber => 456734244}
]

search_instance = Search.new
search_results = search_instance.search_students(students, firstname:"Ken")
