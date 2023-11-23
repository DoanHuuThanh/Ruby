

def greet(name)
  puts "Hello, #{name}!"
end

def show(x)
 puts "come on #{x}"
end

# Thiết lập trace function
# Định nghĩa một phương thức đơn giản
set_trace_func proc { |event, file, line, id, binding, classname|
  printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname }
# Gọi phương thức và xem trace output
greet("Alice")

show("baby")


# Tắt trace function
set_trace_func nil


class MyClass
  attr_accessor :data

  def initialize(data)
    @data = data
  end
end



def after(second,&block)
    Thread.new do
      sleep(second)
      block.call
    end.join
end

after(1) { puts "hello" }


require 'thread'

# Tạo một đối tượng Mutex
mutex = Mutex.new

# Dữ liệu được chia sẻ giữa các luồng
shared_data = 0

# Hàm thực hiện công việc trong critical section
def modify_data(mutex, shared_data)
  mutex.synchronize do
    # Critical section bắt đầu
    shared_data += 1
    puts "Thread #{Thread.current.object_id} modified shared data to #{shared_data}"
    # Critical section kết thúc
  end
end

# Tạo hai luồng thực hiện công việc
thread1 = Thread.new { modify_data(mutex, shared_data) }
thread2 = Thread.new { modify_data(mutex, shared_data) }

# Chờ cả hai luồng hoàn thành
thread1.join
thread2.join

# Tạo một mảng chứa các luồng
threads = []

# Tạo và chạy 5 luồng, mỗi luồng có tham số là số nguyên từ 1 đến 5
5.times do |i|
  threads << Thread.new(i) do |index|
    puts "Thread #{index} started"
    sleep(0.5)
    puts "Thread #{index} finished"
  end
end

# Chờ cả các luồng hoàn thành
threads.each(&:join)

puts "All threads finished"

#ể đảm bảo rằng chỉ có một luồng có thể thực hiện critical section tại một thời điểm. Kết quả là,
#dữ liệu được chia sẻ shared_data được cập nhật một cách an toàn giữa các luồng.
require 'thread'
mutex = Mutex.new

shared_data1 = 0
shared_data2 = 3

def modify_data(mutex,shared_data)

   mutex.synchronize do
       shared_data += 1
       puts "Thread #{Thread.current.object_id} modified shared data to #{shared_data}"
   end
end

thread1 = Thread.new{modify_data(mutex,shared_data1) }
thread2 = Thread.new{modify_data(mutex,shared_data2)}

thread1.join
thread2.join


# Biểu thức chính quy với một nhóm
string = "U1F4FD"
if string =~ /^U([0-9a-fA-F]{4,5}|10[0-9a-fA-F]{4})$/
  puts $1.to_i(16)
else
  puts "Không phù hợp với biểu thức chính quy."
end

module Unicode
  # This method allows us to define Unicode codepoint constants lazily.
  def self.const_missing(name) # Undefined constant passed as a symbol
  # Check that the constant name is of the right form.
  # Capital U followed by a hex number between 0000 and 10FFFF.
  if name.to_s =~ /^U([0-9a-fA-F]{4,5}|10[0-9a-fA-F]{4})$/
  # $1 is the matched hexadecimal number. Convert to an integer.
  codepoint = $1.to_i(16)
  # Convert the number to a UTF-8 string with the magic of Array.pack.
  utf8 = [codepoint].pack("U")
  # Make the UTF-8 string immutable.
  utf8.freeze
  # Define a real constant for faster lookup next time, and return
  # the UTF-8 text for this time.
  const_set(name, utf8)
  else
  # Raise an error for constants of the wrong form.
  raise NameError, "Uninitialized constant: Unicode::#{name}"
  end
  end
 end

 puts Unicode::U1111  # In ra ký tự 'A'
 puts Unicode::U20AC  # In ra ký tự Euro
 puts Unicode::U1F604 # In ra ký tự emoji cười



 class Example
  def method_missing(*args, &block)
    puts "Gọi phương thức  với đối số #{args.inspect}"
  end
end

obj = Example.new
obj.some_method(1, 2, "three")


require 'delegate'
require 'forwardable'

class BaseClass
  def blah
    puts 'hi'
  end
end

require 'delegate'

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class UserProfile < SimpleDelegator
  def full_profile
    "User: #{name}"
  end
end

# Tạo một đối tượng User
user = User.new("John Doe")

# Tạo một đối tượng UserProfile và "delegate" cho đối tượng User
user_profile = UserProfile.new(user)

# Bây giờ, UserProfile có thể sử dụng các phương thức của User thông qua "delegation"
puts user_profile.full_profile
puts user_profile.name  # Phương thức name được chuyển giao từ User



require 'delegate'
require 'forwardable'

class BaseClass
  def blah
    puts 'hi'
  end
end

class SingletonClass < BaseClass

end

class HideSingleton<SimpleDelegator

end

puts HideSingleton.new(BaseClass.new).blah

require 'thread'

class Example1
  @@mutex = Mutex.new

  def existing_method(arg)
    puts "Existing method called with argument: #{arg}"
  end

  def self.method_missing(*args)
    @@mutex.synchronize do
      obj = Example1.new
      obj.send(*args)
    end
  end
end

Example1.existing_method("Hello")  # Output: Existing method called with argument: Hello
#Example1.non_existing_method("World")  không chạy đc vì obj làm j có method non_exitting_method


class MyClass1
  def my_method
    puts "Original method"
  end
  alias pref my_method
end


obj = MyClass1.new
obj.pref

aka = ":mymethod"
c =  aka.gsub!(/([\=\|\&\+\-\*\/\^\!\?\~\%\<\>\[\]])/) do
  num = $1[0]
  num = num.ord if num.is_a? String
  '_' + num.to_s
end

puts c

a="thabg"
puts a.is_a? String
