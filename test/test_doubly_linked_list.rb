require 'minitest/autorun'
require_relative '../lib/doubly_linked_list'
require_relative '../lib/node'

class TestDoublyLinkedList < Minitest::Test
  def setup
    @dll = DoublyLinkedList.new
  end

  def test_initialize
    assert_nil @dll.head
    assert_nil @dll.tail
  end

  def test_append
    @dll.append(10)
    assert_equal 10, @dll.head.data
    assert_equal 10, @dll.tail.data

    @dll.append(20)
    assert_equal 10, @dll.head.data
    assert_equal 20, @dll.tail.data
    assert_equal 20, @dll.head.next.data
    assert_equal 10, @dll.tail.prev.data
  end

  def test_prepend
    @dll.prepend(10)
    assert_equal 10, @dll.head.data
    assert_equal 10, @dll.tail.data

    @dll.prepend(5)
    assert_equal 5, @dll.head.data
    assert_equal 10, @dll.tail.data
    assert_equal 10, @dll.head.next.data
    assert_equal 5, @dll.tail.prev.data
  end

  def test_delete
    @dll.append(10)
    @dll.append(20)
    @dll.append(30)

    assert @dll.delete(20)
    assert_equal 10, @dll.head.data
    assert_equal 30, @dll.tail.data
    assert_nil @dll.head.next.next

    refute @dll.delete(40)
  end

  def test_display
    @dll.append(10)
    @dll.append(20)
    @dll.append(30)

    assert_output("10 20 30 \n") { @dll.display }
  end

  def test_each
    @dll.append(10)
    @dll.append(20)
    @dll.append(30)

    values = []
    @dll.each { |node| values << node.data }
    assert_equal [10, 20, 30], values
  end
end
