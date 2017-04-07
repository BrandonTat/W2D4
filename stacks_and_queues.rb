class MyQueue
  def initialize
    @store = []
  end

  def enqueue(el)
    @store.push(el)
  end

  def dequeue
    @store.shift
  end

  def size
    @store.length
  end

  def peek
    @store.first
  end

  def empty?
    @store.empty?
  end

end


class MyStack
  def initialize
    @store = []
  end

  def pop
    @store.pop
  end

  def push(el)
    @store.push(el)
  end

  def peek
    @store.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end
end


class StackQueue
  def initialize
    @push_stack = MyStack.new
    @pop_stack = MyStack.new
  end

  def enqueue(el)
    @push_stack.push(el)
  end

  def dequeue
    @pop_stack.push(@pushstack.pop)
  end

  def size
    @push_stack.size
  end

  def empty?
    @push_stack.empty?
  end
end
