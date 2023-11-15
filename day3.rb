def next_num(arr)

  result = []
  arr.each do |x|
    next if x.even?
     result << x
  end
  return result
end

arr = [1,2,3,4,5,6,7]

 print next_num(arr), "\n"



 f = Fiber.new do
    puts "fiber1 start1"
    puts "fiber1 start2"
    Fiber.yield "fiber stop"
    puts "fiber1 start3"
    puts "fiber1 start4"

 end

 puts f.resume

 class Fibo
   def initialize
  @x,@y = 0,1
   @fiber = Fiber.new do
       loop do
       @x,@y = @y,@x+@y
       Fiber.yield @x
       end
   end
   end

    def next
    @fiber.resume
    end

    def rewind
     @x,@y = 0,1
    end
 end

 g =Fibo.new

 10.times { print g.next," "}
  print "\n"
  10.times { print g.rewind," "}
  print "\n"

   puts Math.atan2(3,4) #kq là 5


def hello # A nice simple method
  puts "Hello World" # Suppose we want to augment it...
 end
 alias original_hello hello # Give the method a backup name
 original_hello
 def hello # Now we define a new method with the old name
  puts "Your attention please" # That does some stuff
  original_hello # Then calls the original method
  puts "This has been a test" # Then does some more stuff
 end

 hello

x = 3
puts x.between?(1,5)

def sum x,y
  x+ y
end

puts sum 1,2


def prefix(s,len=1)
   s[0,len]
end

puts prefix("hello") # nếu ko truyền đối số vào mặc định của đối số 2 là 1 kq là "h"
puts prefix("hello",3) # truyền vào thì dối số 2 là 3 kq sẽl kà "hel"


# Method declaration using the * operator to gather arguments into an array
def greet(*names)
  puts  "Hello, #{names.join(', ')}!"
end

# Method invocation with the * operator to scatter elements of an array
friends = ['Alice', 'Bob', 'Charlie']

greet(friends)  # truyền vào là friend khi chuyển vào hàm sẽ trở thành 1  tg tự greate(["a","b","c"])
greet(*friends) # truyền vào là *friend giúp mảng chuyển đổi thành  cách đối số riêng biêt tg tự great("a","b","c")
# Output: Hello, Alice, Bob, Charlie!


def sequence(args)

  n = args[:n] || 0
  m = args[:m] || 1
  c = args[:c] || 0

  a = [] # Start with an empty array
  n.times {|i| a << m*i+c } # Calculate the value of each array element
  a # Return the array
 end

 puts sequence({:n=>3, :m=>5})  #truyền 1 hash vào 1 hàm



def sequence1(a,b,c,d)
    i=0
    while i < a
       d.call(b*i+c)
       i+=1
    end
end

d = Proc.new { |x| print x," "}  #tự tạo 1 proc để truyền vào hàm
sequence1(3,5,7,d)
print "\n"

#biểu thức lambda
suc = ->(x){x+1}
puts suc.call(10)

m = ->(x,y;i,j,k) {  # x,y là tham số ,i,j,k là các biến cục bộ của hàm lamda
   i = x+1
   j = i+1
   k = i+j
   return i,j,k
}

print m.call(2,3) # gọi biểu thức lamda

print "\n"
n = ->(x,y,k=2) { [x*k,y*k]}

print n.call(1,2,3),"\n"

# cách gọi khác để thực hienẹ biểu thức lamda hoặc proc
print n.(1,2,3),"\n"
print n[1,2,3],"\n"

my_proc = Proc.new { |a, b, c| puts a + b + c }

puts my_proc.arity

p=[1,2,3,4,5,6]
q=p.dup # dup tạo ra 1 bản sao so với mảng cũ mà khi ta thêm sửa xóa ko làm thay đổi dữ liệu

q.pop()

print p,"\n"
print q,"\n"






def test_return
  puts "entering test_return method"

  begin
    p = Proc.new do

      puts "entering lambda"
      return   #kết thúc hàm test_return tại đây nếu là Proc còn lambda chỉ kết thúc ở trong hàm lambda và sẽ vẫn tiếp tục chạy các lệnh sau

    end
    p.call # Invoking the lambda with return
    puts "entering test_return method"
  rescue LocalJumpError
    puts "Caught LocalJumpError"
  end

  puts "exiting test_return method" # This line is executed
end

test_return
