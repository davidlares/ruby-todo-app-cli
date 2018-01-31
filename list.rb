require "./item.rb"

class List
	
	attr_writer :items

	def initialize()
		@items = Array.new()
	end

	def add_item(text)
		# instancia del objeto
		item = Item.new(text)
		#insercion en el arreglo
		@items.push(item)
	end

	def remove_item(id)
		# eliminamos por indice (index)
		@items.delete_at(id)
	end

	def check_item(id)
		# cambiar estado por item
		@items[id].checked = true
	end

	def remove_all()
		@items.clear
	end

	def show_all()

		if @items.length == 0
			puts "No items in List"
		else
			@items.each_index do |index|
				puts index.to_s + " - " + @items[index].to_s
			end
		end
	end	
end