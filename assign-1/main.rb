#!/usr/bin/ruby

require_relative('conversation_printer.rb')
require_relative('html_filter.rb')

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
