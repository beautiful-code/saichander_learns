class Stack
  def initialize(number)
    @number=number
   @st=Array.new()
    @count=0
  end

  def push(a)
    if @count.to_i < @number.to_i
    @st.push(a)
    @count+=1
    else
      puts "stack is full"
    end
  end

  def top
   puts @st.last
  end

  def pop
    puts @st.pop
    @count-=1
  end

  def size
   puts @st.length
  end

  def display
    puts "#{@st}"
  end
end

one=Stack.new(10)
while true
puts "enter ur choice 1.push 2.pop 3.top 4.display 5.size"
choice=gets.chomp
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

