# Doubly Linked List in Ruby

This project implements a doubly linked list in Ruby. It includes classes for the doubly linked list and its nodes, along with unit tests to ensure the correctness of the implementation.

## Project Structure
```
my_doubly_linked_list/
├── app.rb
├── lib/
│ ├── doubly_linked_list.rb
│ └── node.rb
├── sig/
│ └── doubly_linked_list.rbs
└── test/
├── test_doubly_linked_list.rb
└── test_node.rb
```

## Setup Instructions
1. **Clone the repository:**

    ```sh
    git clone https://github.com/brettbaker/my_doubly_linked_list.git
    cd my_doubly_linked_list
    ```

2. **Install dependencies:**

    ```sh
    bundle install
    ```

## Usage
The `app.rb` file contains an example of how to use the doubly linked list. You can run it using the following command:

    ```sh
    ruby app.rb
    ```

The `app.rb' file includes operations such as appending, prepending, deleting, and displaying the elements in the list.

### Example

```ruby
require_relative 'lib/doubly_linked_list.rb'

# Create a new doubly linked list
dll = DoublyLinkedList.new

# Append elements to the list
dll.append(10)
dll.append(20)
dll.append(30)

# Display the list
dll.display # Output: 10 20 30 

# Prepend an element to the list
dll.prepend(5)

# Display the list again
dll.display # Output: 5 10 20 30 

# Delete an element from the list
dll.delete(20)

# Display the list again
dll.display # Output: 5 10 30 
```

## Running Tests
The project includes unit tests for the `Node` and `DoublyLinkedList` classes. The tests are located in the `test` directory and use the `minitest` framework.

To run the tests, use the following commands:

```sh
bundle exec ruby -Ilib:test test/test_node.rb
bundle exec ruby -Ilib:test test/test_doubly_linked_list.rb
```

or run all the tests at once:
```sh
bundle exec ruby -Ilib:test -e 'Dir.glob("./test/**/test_*.rb").each { |f| require f }'
```

## Type Signatures
The project uses Ruby Signature (RBS) to define type signatures for the classes.
The type signatures are located in the `sig` directory.

### Example Type Signature
```rbs
class Node
  attr_accessor data: untyped
  attr_accessor prev: Node?
  attr_accessor next: Node?

  def initialize: (untyped, Node? prev_node, Node? next_node) -> void
end

class DoublyLinkedList
  attr_accessor head: Node?
  attr_accessor tail: Node?

  def initialize: () -> void
  def append: (untyped data) -> void
  def prepend: (untyped data) -> void
  def delete: (untyped data) -> bool
  def display: () -> void
end
```

## Contributing
Contributions are welcome! Please open an issue or submit a pull request if you have any improvements or bug fixes.

## License
This project is licesed under the MIT License. See the LICENSE file for details.