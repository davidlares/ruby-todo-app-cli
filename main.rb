require './item.rb'
require './list.rb'

class Main
	
	attr_writer :list
	
	def initialize()
		@list = List.new
		run()
	end

	def run
		puts "Welcome to DavidTodoApp"
		
		loop do 
			puts "a - Add Item"
			puts "r - Remove tem"
			puts "v - Show all Items"
			puts "m - mark item as Checked" 
			puts "b - Delete all Items"
			puts "s - Exit DavidTodoApp"
			puts " "
			print ">> Pick an Option: "
			input = gets.chomp # obtenemos el dato
			case input
			when 'a'
				puts " "
				print ">> Product Name: "
				item = gets.chomp
				@list.add_item(item)
				puts "Item Added"
				puts ""
			when 'r'
				puts ""
				print ">> Type Item ID to Remove: "
				item = gets.chomp
				@list.remove_item(item.to_i) #convert string to_integer
				puts "Item Deleted"
				puts ""
			when 'v'
				puts ""
				puts "Your items List"
				@list.show_all
				puts " "
			when 'm'
				puts ""
				print ">> Type Item ID to mark as Checked: "
				item = gets.chomp
				@list.check_item(item.to_i) #convert string to_integer
				puts "Item Checked"
				puts ""
			when 'b'
				@list.remove_all
				puts " "
				puts "Items Deleted"
				puts " "
			when 's'
				break
			else
				puts " "
				puts "Unrecognized Command. Try again"
				puts " "
			end

		end	
		puts "Thanks for using."
	end
end

app = Main.new