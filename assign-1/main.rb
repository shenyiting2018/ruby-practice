#!/usr/bin/ruby

require_relative('conversation_printer.rb')

puts 'hello world'


# Question 7
printer = ConversationPrinter.new('ADVISOR', 'conversation.txt')
printer.print
