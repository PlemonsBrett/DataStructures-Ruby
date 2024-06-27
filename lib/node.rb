class Node
    attr_accessor :data, :next, :prev

    # Initializes a new Node object with the given data, previous node, and next node.
    #
    # @param data [Object] The data to be stored in the node.
    # @param prev_node [Node, nil] The previous node in the linked list. Defaults to nil.
    # @param next_node [Node, nil] The next node in the linked list. Defaults to nil.
    # @return [void]
    def initialize(data, prev_node = nil, next_node = nil)
        @data, @prev, @next = data, prev_node, next_node
    end
end
