class WorldGreet
   def greet
     puts "#{greeting}, #{who}"
   end

   def greeting
    "helllo"
   end

   def who
      "world"
   end

end

w = WorldGreet.new
 w.greet

 class ChildWorld < WorldGreet
   def greeting  # ghi đè phương thức cha
      "bye"
   end
 end

  c = ChildWorld.new
  c.greet
  d= WorldGreet.new
  d.greet


class Abs
     def greet
    puts "#{greeting}, #{who} "
     end
end

class Bde < Abs
   def greeting; "Hello";end
   def who; "World";end
end

b = Bde.new
b.greet


class Ba
    attr_accessor :x,:y
    def initialize(x,y)
        @x = x
        @y = y
        end
        def tinh
          return @x + @y
        end
end

class Con < Ba
      attr_accessor :x,:y
      def initialize(x,y)
           super(x,y)
          end
end


c = Con.new(1,2)
puts c.tinh


class A
  attr_accessor :x
   def initialize(x)
      @x = x
   end
   def hthi
     puts " my name is #{@x}"
   end
end


class B<A
    attr_accessor :y
    def initialize(x,y)
      super(x)
      @y = y
    end
    def hthi(mesage)
      super()   #super có thể được sử dụng để gọi các phương thức của lớp cha trong một hệ thống kế thừa.
    puts " the game is #{y}"
    end
end

b= B.new("amazing","bozing")

 puts b.hthi("haha")


 class Animal
   def speak(sound)
     puts "The animal says #{sound}"
   end
 end

 class Dog < Animal
   def speak(sound)
     super(sound)  # Gọi phương thức của lớp cha với đối số
     puts "The dog barks loudly!"
   end
 end

 dog = Dog.new
 dog.speak("Woof")



 class C
   attr_accessor :x, :y
   def initialize(x, y)
      @x = x
      @y = y
   end
   def hthi
     @x + @y
     end
 end

 class D < C
      attr_accessor :z, :m
      def initialize(x,y,z,m)
         super(x,y)
          @z = z,
          @m = m
         end
 end

 d = D.new(1,2,3,4)
 c1 = C.new(3,2)
puts d.hthi
 puts c1.hthi

 class E
   @@value = 1
   def E.value;@@value;end
 end

 class F<E
    @@value +=1
 end

 class G<E
   @@value +=2
 end


 puts F.value


   class Point
      attr_accessor :x, :y

 # Define an initialize method as usual...
 def initialize(x,y) # Expects Cartesian coordinates
 @x,@y = x,y
 end
 # But make the factory method new private
 private_class_method :new #Bằng cách làm cho new và allocate thành các phương thức private của lớp, nó ngăn
 #chặn việc tạo mới instance thông qua new và allocate từ bên ngoài lớp. vd: p1 =Point.ew(1,2) # lỗi không chạy
 def Point.cartesian(x,y) # Factory method for Cartesian coordinates
 new(x,y) # We can still call new from other class methods
 end
 def Point.polar(r, theta) # Factory method for polar coordinates
 new(r*Math.cos(theta), r*Math.sin(theta))
 end
private :dup,:clone # nó ngăn chặn việc sao chép hoặc clone các instances của class từ bên ngoài. p3 = p1.clone sẽ bị lỗi or p3=p1.dup
end


p1 = Point.cartesian(1,2)
p2 = Point.polar(3,4)
puts p1.x
puts p2.x


class Person
 attr_accessor :name, :age
   def initialize(name,age)
      @name = name
      @age = age
   end

   def to_s
     "#{@name},#{@age} years old"
   end

    def marshal_dump #  Ruby sẽ gọi phương thức này để biến đối tượng thành một định dạng có thể lưu trữ, trong trường hợp này là một mảng chứa giá trị của biến @name
       [@name]
    end

     def marshal_load(data) #uby sẽ gọi phương thức này và truyền vào chuỗi bytes. Phương thức này sẽ khôi phục giá trị của
      #@name từ mảng trong chuỗi bytes, tái tạo đối tượng Person với thông tin ban đầu., trong trg hopwj này không có age
     @name = data[0]
     end
#Nếu không định nghĩa marshal_dump và marshal_load, Ruby sẽ sử dụng mặc định để serialize và deserialize đối tượng. Quá trình này sẽ tự động lấy tất cả các instance variable của đối tượng
#và lưu trữ chúng. Khi tái tạo đối tượng từ dữ liệu đã lưu trữ, Ruby sẽ khởi tạo đối tượng mới và thiết lập các instance variable từ dữ liệu.

end


person = Person.new("thanh",29)
 marshal_data = Marshal.dump(person) # chuyển đối tượng thành chuỗi byte
 unmarshar_person = Marshal.load(marshal_data) # chuyển chuỗi byte thành đối tượng

 puts unmarshar_person



 #singleton trong ruby cho phép tạo duy nhất 1 đối tượng và chỉ trỏ tới 1 đối tượng duy nhất
   require 'singleton'
# sử dụng module Singleton có sẵn trong thư viện chuẩn
   class SingletonClass
       include Singleton #khi gọi thư viện Singleton mặc định có private_class_method
          attr_accessor :data

         def initialize
            @data = "Doan Huu Thanh"
         end
   end
   #Tạo một thể hiện của lớp SingletonClass
   singletonclass1 = SingletonClass.instance
     puts singletonclass1.data
   #Thay đổi dữ liệu
   singletonclass1.data = "Nguyen Van Nam"
   #Tạo một thể hiện khác, nhưng nó vẫn trỏ đến thể hiện đầu tiên
   singletonclass2 = SingletonClass.instance
     puts singletonclass2.data

     a=[1,3,2,1,3,4,5]

     b= a.sort { |a,b| a <=> b}
 puts b





 module Iterable
  include Enumerable

  def next
    @iter_index ||= -1
    @iter_index += 1
    raise StopIteration if @iter_index >= size
    self[@iter_index]
  end

  def each
    loop { yield self.next }
  end
end

a = [1, 2, 3, 4, 5]
a.extend(Iterable)

a.each { |x| print x }  # Output: 12345


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
 module Included
  # Constants defined in an included module
  A = B = C = "defined in included module"
 end
 module Enclosing
  # Constants defined in an enclosing module
  A = B = "defined in enclosing module"
  class Local < Super
  include Included
  # Locally defined constant
  A = "defined locally"
  # The list of modules searched, in the order searched
  # [Enclosing::Local, Enclosing, Included, Super, Object, Kernel]

  search = (Module.nesting + self.ancestors + Object.ancestors).uniq

  puts F # Prints "defined in kernel"
  end
 end
