class Node
  attr_accessor :next, :next_node, :data

 def initialize(data = nil, next_node)
   @data = data
   @next_node = next_node
 end

 def next
   @next_node
 end

end

class LinkedList
  attr_accessor :head

 def initialize(data)
   @head = Node.new(data, nil)
 end

 def index_at(num)
   node = @head
   num.times do
     if node.next == nil
        return nil
     else
       node = node.next
     end
   end
   node.data
 end

 def insert_at_index(index, value)
     prev_node = @head
     new_next = @head.next
   (index - 1).times do
     if new_next == nil
       prev_node.next_node = Node.new(nil, nil)
     end
      new_next = prev_node.next.next
      prev_node = prev_node.next
    end
      prev_node.next_node = Node.new(value, new_next)
 end

 def unshift(val)
   @head = Node.new(val, @head)
 end
 def push(val)
   node = @head
   loop do
     break if node.next == nil
     node = node.next
   end
   node.next_node = Node.new(val, nil)

 end
end
