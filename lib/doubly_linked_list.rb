require_relative 'node.rb'

class DoublyLinkedList
    attr_accessor :head, :tail

    # Initializes the doubly linked list with both head and tail pointing to nil.
    def initialize
        @head, @tail = nil
    end

    # Appends a new node to the doubly linked list.
    #
    # @param data [Object] The data to be stored in the new node.
    # @return [void]
    def append(data)
        new_node = Node.new(data)

        if @tail
            @tail.next = new_node
            new_node.prev = @tail
        else
            @head = new_node
        end
        @tail = new_node
    end

    # Prepends a new node to the doubly linked list.
    #
    # @param data [Object] The data to be stored in the new node.
    # @return [void]
    def prepend(data)
        new_node = Node.new(data)
        if @head
            @head.prev = new_node
        else
            @tail = new_node
        end
        new_node.next = @head
        @head = new_node
    end

    # Deletes a node with the specified data from the doubly linked list.
    #
    # @param data [Object] The data to be deleted from the list.
    # @return [Boolean] Returns true if the node was successfully deleted, false otherwise.
    def delete(data)
        current_node = @head
        if current_node && current_node.data == data
            if current_node.prev
                current_node.prev.next = current_node.next
            else
                @head = current_node.next
            end

            if current_node.next
                current_node.next.prev = current_node.prev
            else
                @tail = current_node.prev
            end
            return true
        else
            while current_node && current_node.next && current_node.next.data != data
                current_node = current_node.next
            end

            if current_node && current_node.next
                next_node = current_node.next
                current_node.next = next_node.next
                if next_node.next
                    next_node.next.prev = current_node
                else
                    @tail = current_node
                end
                return true
            end
        end
        false
    end

    # Displays the contents of the doubly linked list.
    #
    # This method utilizes the each method to iterate through each node in the list and prints the data of each node.
    #
    # @return [void]
    def display
        each { |node| print "#{node.data} " }
        puts
    end

    def each
        current_node = @head
        while current_node
            yield current_node
            current_node = current_node.next
        end
    end
end
