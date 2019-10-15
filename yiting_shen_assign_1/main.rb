#!/usr/bin/ruby
require_relative('question_1.rb')
require_relative('question_2.rb')
require_relative('question_3.rb')
require_relative('question_4.rb')
require_relative('question_5.rb')
require_relative('question_6.rb')
require_relative('question_7.rb')


# May need to run `chmod +x main.rb` to make it executable
puts "#{'=' * 10} This is the assignment 1 from Yiting Shen #{'=' * 10}" 

# Solution for Question 1
puts "\n#{'=' * 20} Question 1 #{'=' * 20}" 

test_string = %{
Facebook and its founder must release documents and electronic correspondence to a defense lawyer whose client has fled from criminal charges that he falsely claimed a majority ownership in the social media giant, a federal judge said Friday.
}

# Testing counting word for "and"
count_word_and = test_string.count_word("and")
puts "\nResult for counting word: 'and' = #{count_word_and}"

# Testing counting word without any argument, a hash should be returned
count_word_no_argument = test_string.count_word()
puts "\nResult for counting word without argument = #{count_word_no_argument}"

# Testing invalid argument, nothing should be returned. Alert should be displayed.
puts "\nTesting invalid argument, should display alerting info"
count_word_integer = test_string.count_word(4)


#Solution for Question 2
# Q? multiple params allowed?
puts "\n#{'=' * 20} Question 2 #{'=' * 20}" 

students = [
    {:firstname => "John", :lastname => "LastnameJohn", :phonenumber => 123456789},
    {:firstname => "Ken", :lastname => "Lastnameken",:phonenumber => 456734233},
    {:firstname => "Marisa", :lastname => "lastnamemarisa", :phonenumber => 443234567},
    {:firstname => "Ken", :lastname => "Kenlastname", :phonenumber => 456734244}
]

search_instance = Search.new
puts "\nSearch for student whose first name is 'Ken'"
search_instance.search_students(students, firstname:"Ken")

puts "\nSearch for student who doesn't exist"
search_instance.search_students(students, firstname:"Bill")



#Solution for Question 3
# Q? abs for diff?
puts "\n#{'=' * 20} Question 3 #{'=' * 20}" 

person1 = Person.new(36)
person2 = Person.new(37)
puts "Person1's age is #{person1.age}. Person2's age = #{person2.age}"
puts "Age diff is #{person1.age_different_with(person2)}"
# Test age is changable
person1.age = person1.age + 1
person2.age = person2.age + 1
puts "After one year, person1 grows to #{person1.age}. Person2 grows to #{person2.age}"


#Solution for Question 4
puts "\n#{'=' * 20} Question 4 #{'=' * 20}" 
instance = Compress.new("i love you but do you love me")
puts "String array: #{instance.string_array}"
puts "Index array: #{instance.index_array}"


#Solution for Question 5
puts "\n#{'=' * 20} Question 5 #{'=' * 20}" 
puts "----Running h1.merge(h2)-----"
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
puts "Using merge without block, created new hash with merged result: #{h1.merge(h2)}"
puts "After merge without block, h1 stay still, = #{h1}"

puts "----Running h1.merge(h2) with block----"
puts "Using merge without block, created new hash with merged result: #{h1.merge(h2){|key, val1, val2| val2 - val1}}"  
puts "After merge without block, h1 stay still, = #{h1}"

puts "--- Running h1.merge!(h2)-----"
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }
puts "Using merge! without block, h1 is merged. result: #{h1.merge!(h2)}"
puts "After merge! without block, h1 is changed, = #{h1}"

puts "----Running h1.merge!(h2) with block----"
h1 = { "a" => 100, "b" => 200 }
puts "Using merge! without block, h1 is merged. result: #{h1.merge!(h2){|key, val1, val2| val2 - val1}}"
puts "After merge! without block, h1 is changed, = #{h1}"


#Solution for Question 6
# Do we consider a ruby tag <% %> crossing multiple lines
puts "\n#{'=' * 20} Question 6 #{'=' * 20}" 

template = %{
<%= simple_form_for @project do |f| %>   
    <%= f.input :name %>  
    <%= f.input :description %>  
    <h3>Tasks</h3>  
    <div id='tasks'>     
        <%= f.simple_fields_for :tasksdo |task| %>      
            <%= render 'task_fields', :f => task %>    
        <% end %>
        <div class='links'>
            <%= link_to_add_association 'add task', f, :tasks %>
        </div>
    </div>
<%= f.submit 'Save' %>
<% end %>
}

filter = HTMLFilter.new(template)
puts "\nAfter filtering ruby tags, the result is #{filter.filter}"


# Question 7
puts "\n#{'=' * 20} Question 7 #{'=' * 20}" 
printer = ConversationPrinter.new('ADVISOR', 'conversation.txt')
printer.print


