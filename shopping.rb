require 'erb'

def get template()
	#string
	%{
		<html>
		<head>
		</head>
<body>
<h1> Shopping List for <%= @date.strftime('%A, %d, %B, %Y)%>
<p> You need to buy </p>
<ul>
<% for item in @items %>
	<li> 
</u	
</body>
	</html>
}
end

def list
class ShoppingList
	include ERB::Util
	attr_accessor :items, :template, :date

	def initialize(items, template, date = Time.now) 
		@items = items
		@template = template
		@date = date
	end

	def filter()
		ERB.new(@template).result(binding)
	end

	def save(file)
		File.open(file, "w") do |f|
			f.write(filter)
	end
end

list = ShoppingList.new(get_items, get_template)
list.save("list.html")