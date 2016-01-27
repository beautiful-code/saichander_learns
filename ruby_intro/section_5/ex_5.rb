class Stack
  $tos=-1
  def initialize(number)
    @number=number
   @st=Array.new(number)
  end

  def push(a)
    $tos+=1
    @st.insert($tos,a)
  end

  def top
   puts @st.at($tos)
  end
  def pop
    puts @st.delete_at($tos)
    $tos-=1
  end

  def size
   puts @st.length
  end
  def display
    puts "#{@st}"
  end
end

one=Stack.new(10)
one.push(1)
one.push(2)
one.push(3)
one.top
one.size
one.pop
one.size
one.display
