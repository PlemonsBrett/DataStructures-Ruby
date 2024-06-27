require 'minitest/autorun'
require_relative '../lib/node'

class TestNode < Minitest::Test
  # A test function to initialize a Node object with specific data and assert the equality and nil values.
  def test_initialize
    node = Node.new(*[10, nil, nil])
    assert_equal [10, nil, nil], [node.data, node.prev, node.next]
  end

  # Tests the linking of nodes in a linked list.
  def test_linking_nodes
    node1 = Node.new(10)
    node2 = Node.new(20)
    node2.prev = node1
    node1.next = node2

    assert_equal node2, node1.next
    assert_equal node1, node2.prev
  end
end
