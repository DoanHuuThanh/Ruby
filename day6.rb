
module Kernel
  # Constants defined in Kernel
  A = B = C = D = E = F = "defined in kernel"
end

# Top-level or "global" constants defined in Object
A = B = C = D = E = "defined at toplevel"

class Super
  # Constants defined in a superclass
  A = B = C = D = "defined in superclass"
end


module Enclosing
  # Constants defined in an enclosing module
  A = B = "defined in enclosing module"

  class Local < Super


    # Locally defined constant
    A = "defined locally"

    # The list of modules searched, in the order searched
    # [Enclosing::Local, Enclosing, Included, Super, Object, Kernel]
    search = (Module.nesting + self.ancestors + Object.ancestors).uniq

    puts A # Prints "defined locally"
    puts B # Prints "defined in enclosing module"
    puts C # Prints "defined in included module"
    puts D # Prints "defined in superclass"
    puts E # Prints "defined at toplevel"
    puts F # Prints "defined in kernel"
  end
end



 o=[1,2,3,4,5,6]

 puts o.include?(6)



 class Example
     attr_accessor :x, :y

      def initialize(x, y)
          @x = x
          @y = y
          end

       def example_binding
        local = "Doan Thanh"
        binding
       end
 end


 exam = Example.new(20,12)

puts eval("@x+@y", exam.example_binding)

puts eval("local", exam.example_binding)

puts eval("2+1", exam.example_binding)


class Person
   attr_accessor :name ,:age, :address
    def initialize(name, age, address)
        @name = name
        @age = age
        @address = address
    end

      def get_binding
        binding
      end

      def to_hash_string
        {
          name: @name,
          age: @age,
          address: @address
        }.to_s
      end
end


person = Person.new("Thang",20,"Hải Dương")

puts eval(person.to_hash_string, person.get_binding)




class Person
  def initialize(name)
    @name = name
  end
end

person = Person.new("John Doe")

# Sử dụng instance_eval để đặt tên cho đối tượng person
person.instance_eval do
  @name = "Jane Doe"
end

puts person.inspect # In ra: #<Person:0x007fb22987a678 @name="Jane Doe">



class Employee
     attr_accessor :name,:age, :address
     def initialize(name, age, address)
         @name = name
         @age = age
         @address = address
         end

end

employee = Employee.new("Nam",21,"QN")

#instance_val để thiết lập hoặc thay đổi giá trị các thuộc tính mà ko cần getter, setter
employee.instance_eval do
     @name = "khánh" #đổi tên
end

   puts employee.address
   puts employee.name

   employee.instance_eval do
      @address = "Hà Nội" # đổi địa chỉ
   end

   puts employee.address

   #class eval để mở rộng thêm phương thước của lớp đó hoặc thêm thuộc tính mơi
     Employee.class_eval do
        attr_accessor :phone
      def hienthi
        puts "name : #{@name}, age : #{@age}, address : #{@address}, phone : #{@phone}"
        end
     end

  e1 = Employee.new("Hai",19,"HP")
  e1.hienthi



  class Point
    def initialize(x,y)
    @x = x
    @y = y
    end

    @@classvar = 1
    ORIGIN = Point.new(1,1)
  end

  print Point::ORIGIN.instance_variables,"\n"
  print Point.class_variables,"\n"
  print Point.constants,"\n"



  object = Object.new

 puts object.instance_variable_set(:@x,0) #khởi tạo thuốc tính cho lớp
 puts object.instance_variable_get(:@x)
  puts object.instance_variable_defined?(:@x)

  puts Object.class_variable_set(:@@x,12) # khởi tạo class_variable cho lớp
  puts Object.class_variable_get(:@@x)
  puts Object.class_variable_defined?(:@@x)


  puts Math.const_set(:EPI,Math::E*Math::PI) #khởi tạo giá trị cho Hằng
  puts Math.const_get(:EPI)
  puts Math.const_defined?(:EPI)


  class String
    @@class = 1
  end

      String.class_eval do
        class_variable_set(:@@total, 16)

        def show1
          puts "total : #{String.class_variable_get(:@@total)}, class = #{String.class_variable_get(:@@class)}"
        end
      end

      t = String.new
      t.show1

      String.class_eval do
        remove_class_variable(:@@class) #xóa class_variable trên lớp String
        def show2
          puts "total : #{String.class_variable_get(:@@total)}"
        end
      end
      t.show2


      met = "a string"

      print met.methods,"\n" # tên của các phương thức công khai có thể dùng
      print  met.public_methods(false), "\n"

     def met.single; 1; end

     puts met.single

     puts Math.singleton_methods #


     #send
     class Caculator
      def add(a,b)
           a+b
      end

      def mutiphi(a,b)
           a*b
      end
     end

     calc = Caculator.new

     puts calc.send(:add,1,2)  # send để gọi các phương thức có trong module hoặc class, và truyền các đối số tương ứng của mỗi phương thức
     puts calc.send(:mutiphi,5,7)

 # Add an instance method named m to class c with body b
def add_method(c, m, &b)
  c.class_eval {
  define_method(m, &b) #tự định nghãi 1 method riêng của lớp đó với đối số là tên method muốn đặt và truyền vào 1 lambda
  }
 end
 add_method(String, :greet) { |name| "Hello, " + name }
 p = String.new
 puts p.greet("world") # => "Hello, world"

class Obin

end

 def backup(c, m, prefix="nam")
  d = :"#{prefix}_#{m}" # Tính toán tên của alias
  c.class_eval { # Vì alias_method là private
    alias_method d, m # Tạo n thành một alias cho phương thức m
  }
end

backup(Array, :reverse)

c= [1,2,3,4].nam_reverse # => "tset"
puts c

status = :active

puts status


class Animal
  def method_missing method, *args, &block # method_missing đóng vai trò như là phòng tuyến cuối cùng để xử lý việc gọi đến những method mà không tồn tại, chưa được định nghĩa.
    if method.to_s == "fly"
      puts "Sorry, cows can’t fly!"
    else
      super
    end
  end
end

class Animal
   def walk
     puts "dog walk"
   end
end

dog = Animal.new


dog.walk
dog.fly # khi class ko có method fly nó sẽ gọi đến method_missing,
        #method_missing là một method. Nó là một method được xây dựng sẵn của class BasicObject trong Ruby


        module Strict
         def singleton_method_added(name)
         STDERR.puts "Warning: singleton #{name} added to a Strict object"
         eigenclass = class << self; self; end
         eigenclass.class_eval { remove_method name }
         end
        end

        class MyClass
          include Strict
        end

        obj = MyClass.new

        def obj.custom_singleton_method
          puts "This is a custom singleton method."
        end


        module InstanceCounter
          def self.included(kclass)
            kclass.extend ClassMethods
            kclass.include InstanceMethods
            kclass.initialize_counter
          end

          module ClassMethods
            attr_accessor :counter
          def initialize_counter
            @counter = 0
          end
        end

          module InstanceMethods
            def initialize(*)
              super
              self.class.counter += 1
            end
          end
        end

        class Person2
          include InstanceCounter
        end

        class Animal
          include InstanceCounter
        end

        person1 = Person2.new
        person2 = Person2.new
        person3 = Person2.new

        animal1 = Animal.new

          puts "Person instances: #{Person2.counter}"
          puts "Animal instances: #{Animal.counter}"




        module MyModule
          def initialize(*)
             puts " hello world"
          end
        end

        class Eval
        include MyModule  #ko có phương thức initialize nên sẽ kế thừa trực tiếp từ module và khi tạo eval = Eval.new sẽ hiển thị ra hello world
        end

        eval = Eval.new(1,2)
        e = Eval.new(3,4)


        module MyModule1
          def initialize(*)
             puts " hello world"
          end
        end

        class Eval1
        include MyModule1
         attr_accessor :x, :y
            def initialize(x,y) #cả phương thức initialize của class và module đều sẽ được gọi. Trong trường hợp này,
                               #phương thức initialize của class Eval sẽ đè lên phương thức initialize của module MyModule.
             @x = x
             @y = y
            end
        end

        eval1 = Eval1.new(1,2)
        e1 = Eval1.new(3,4)


          module Strict
            def singleton_method_added(name)
            STDERR.puts "Warning: singleton #{name} added to a Strict object"
            eigenclass = class << self; self; end
            eigenclass.class_eval { remove_method name }
            end
          end

          class StrictObject
            include Strict
          end

          strict_obj = StrictObject.new

          eigenclass = class<< strict_obj; self;end

          # Thêm một phương thức đơn lẻ vào strict_obj
           eigenclass.class_eval do # tự động in ra "Warning: singleton #{name} added to a Strict object khi 1 method mới đc thêm vào
             def single
              puts "hello"
              end
          end

          #singleton_method_added là 1 hook method sẽ tự động kích hoạt khi 1 singleton_method đc thêm vào 1 class



         #initialize: Được gọi khi một đối tượng được khởi tạo. Đây là nơi tốt để thiết lập trạng thái ban đầu của đối tượng.
         #method_missing: Được gọi khi một phương thức không tồn tại được gọi. Cho phép bạn xử lý các phương thức không được định nghĩa trước.
         #singleton_method_added: Được gọi khi một phương thức singleton mới được thêm vào đối tượng.
         #included và extended: Được gọi khi một module được bao gồm hoặc mở rộng vào một lớp hoặc một đối tượng.
         #prepend: Được gọi khi một module được chèn vào trước các module khác trong một lớp.
         #method_added và method_removed: Được gọi khi một phương thức mới được thêm vào hoặc một phương thức được loại bỏ khỏi một lớp.

         module MyModule2
          def hello
            puts "Hello from MyModule!"
          end
        end

        class MyClass
          prepend MyModule2

          def hello
            puts "Hello from MyClass!"
          end
        end

        obj = MyClass.new
        obj.hello  # kq :Ruby sẽ tìm kiếm phương thức trong module MyModule trước tiên, do vị trí prepend.
        #Do đó, phương thức hello của MyModule được gọi đầu tiên và in ra chuỗi "Hello from MyModule!". Hello from MyModule! ,prepend ưu tiên module hơn
        #và sẽ ưu tiên lấy các method trong module

        class MyClass1
          def self.method_added(method_name)
            puts "Method '#{method_name}' added to MyClass!"
          end

          def self.method_removed(method_name)
            puts "Method '#{method_name}' removed from MyClass!"
          end

          def new_method
            puts "Hello from new_method!"
          end

          remove_method :new_method
        end

  m1 = MyClass1.new
