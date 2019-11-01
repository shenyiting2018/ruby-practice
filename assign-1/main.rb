#!/usr/bin/ruby
require_relative("q1.rb")
require_relative("q2.rb")
require_relative("q3.rb")
require_relative("q4.rb")
require_relative("q5.rb")
require_relative("q6.rb")
require_relative("q7.rb")

str = <<EOS
Facebook and its founder must release documents and electronic correspondence to a defense lawyer
whose client has fled from criminal charges that he falsely claimed a majority ownership in the social
media giant, a federal judge said Friday.
EOS

# p str.count_word("and")
# p str.count_word("haha")


students = [ {:firstname => "John", :lastname => "LastnameJohn", :phonenumber => 123456789},
{:firstname => "Ken", :lastname => "Lastnameken", :phonenumber => 456734244},
{:firstname => "Marisa", :lastname => "lastnamemarisa", :phonenumber => 443234567},
{:firstname => "Ken", :lastname => "Kenlastname", :phonenumber => 456734244}]
#obj = Search.new
#obj.search_students(students, firstname: "Ken", phonenumber: 456734244)

#person1 = Person.new(13)
#person2 = Person.new(25)
#p person1.age_different_with(person2)

#obj = Compress.new("i love you but do you love me")
#p obj.words
#p obj.indexes

#h1 = { "a" => 100, "b" => 200 }
#h2 = { "b" => 254, "c" => 300 }
#p h1.merge(h2) #=> {"a"=>100, "b"=>254, "c"=>300}
#p h1.merge(h2){|key, val1, val2| val2 - val1}

template = <<ERB
<%= simple_form_for @project do |f| %>
<%= f.input :name %>
<%= f.input :description %>
<h3>Tasks</h3>
<div id='tasks'>
<%= f.simple_fields_for :tasks do |task| %>
<%= render 'task_fields', :f => task %>
<% end %>
<div class='links'>
<%= link_to_add_association 'add task', f, :tasks %>
</div>
</div>
<%= f.submit 'Save' %>
<% end %>
ERB

#obj = MyClass.new(template)
#print obj.filter

obj = Conversation.new
obj.filter("conversation.txt", "STUDENT")
