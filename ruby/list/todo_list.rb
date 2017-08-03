class TodoList

def initialize(list)
  @list = list
end

def get_items
	@list
end

def add_item(mop)
	@list << mop
end

def delete_item(dishes)
	@list.delete(dishes) 
end

def get_item(print_dishes)
  @list[0]
end
end