class Search
	def search_students(students, firstname)
		for student in students
			if student.firstname==firstname
				p lastname
			else
				p "no match is found"
			end
		end
	end
end

students = [ {:firstname => "John", :lastname => "LastnameJohn", :phonenumber => 123456789},  {:firstname => "Ken", :lastname => "Lastnameken", :phonenumber => 456734244}, 
{:firstname => "Marisa", :lastname => "lastnamemarisa", :phonenumber => 443234567},  {:firstname => "Ken", :lastname => "Kenlastname", :phonenumber => 456734244}]


