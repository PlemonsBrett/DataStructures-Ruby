require_relative 'doubly_linked_list.rb'

# Create a new doubly linked list
dll = DoublyLinkedList.new

# Append elements to the list
dll.append(10)
dll.append(20)
dll.append(30)

# Display the list
list = dll.display
puts list

# Prepend element to the list
dll.prepend(5)

# Display the list again
list = dll.display
puts list

# Delete an element from the list
dll.delete(20)

# Display the list again
list = dll.display
puts list
