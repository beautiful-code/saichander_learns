class Stack
  def initialize(number)
    @max_size=number
    @stack = Array.new()
  end

  def push(a)
    if @stack.size < @max_size.to_i
      @stack.push(a)
    else
      puts "stack is full"
    end
  end

  def top
    puts @stack.last
  end

  def pop
    puts @stack.pop
  end

  def size
    puts @stack.length
  end

  def display
    puts "#{@stack}"
  end
end

one=Stack.new(10)
while true
  puts "enter ur choice 1.push 2.pop 3.top 4.display 5.size"
  choice = gets.chomp
  case choice
  when '1'
    puts "enter elemnt to be pushed"
    a=gets.chomp
    one.push(a)
  when '2'
    one.pop
  when '3' then  one.top
  when '4' then  one.display
  when '5' then  one.size
  else
    puts "enter correct option"
  end
end

