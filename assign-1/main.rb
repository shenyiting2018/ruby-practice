#!/usr/bin/ruby

require_relative('conversation_printer.rb')
require_relative('html_filter.rb')
require_relative('new_hash.rb')

# Question 5
puts "======================Question 5==========================="
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
puts "Using merge without block, created new hash with merged result: #{h1.merge!(h2)}"
puts "After merge without block, h1 stay still, = #{h1}"

puts "----Running h1.merge!(h2) with block----"
h1 = { "a" => 100, "b" => 200 }
puts "Using merge without block, created new hash with merged result: #{h1.merge!(h2){|key, val1, val2| val2 - val1}}"
puts "After merge without block, h1 stay still, = #{h1}"


# Question 6
puts "=======================Question 6==========================="
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
filter.filter

puts "======================Question 7================================="
# Question 7
printer = ConversationPrinter.new('ADVISOR', 'conversation.txt')
printer.print
