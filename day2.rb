class Ambi
def x; 1;end  # hàm x có giá trị trả về là 1

def test
  puts x    #  trả về hàm x có giá trị là 1
  x= 1 if  false   # khai báo biến x =1 if false, ở đây x đã nhìn nhận là biến ko còn là hàm nx
  puts x # giá trị trả về là nil vì if  false nên x ko hoạt động

  x= 2  # gán giá trị mới là 2 cho biến x
  puts x #trả về kq là 2

end
end

resul = Ambi.new
resul.test

 print "\n"

 b = 4
 a = 7

  print a<<=b # Phép toán này di chuyển các bit của giá trị a sang bít trái, thêm các bit 0 vào bên phải.
  print "\n"
  print a >>=b # ngược lại
  print "\n"

   b1 = 1   # 01 (trong hệ nhị phân)
   b2 = 2   # 10 (trong hệ nhị phân)
   result1 = b1 | b2  # Kết quả sẽ là 11 (trong hệ nhị phân), tương đương với 3

   puts result1

     n = Range.new(1,6,true)

     n.each { |i| print i," "  if i % 2 == 0 }
     print "\n"

     n.each { |i| print i," " if i==2...i>=4}
     print "\n"

     m = 8
     puts m>=a ?m : a

     $state2 = false
def flipflop2(x)
 if !$state2
 $state2 = (x == 3)
 return $state2
 else
 $state2 = !(x >= 3)
 return  true
 end
end
# Now try it out
(1..10).each {|x| print x," " if x==3...x>=3 } # Prints "34"
print "\n"
(1..10).each {|x| print x," " if flipflop2(x) } # Prints "34" khi x=1, x=2 trả về nil vì khi đó $state2 là false hàm flìlop2 trả về giá trị false của state2
                                            # khi x=3, x=4 trả về true vì khi đó $state2 là true và hàm flipflop2 trâ về giá trị là true
print "\n"

x= 1
if x <10
    puts true
end

number = 4

if number.even?   # even? kiểm tra 1 số có là số chẵn ko, nếu có trả về true ngc lại trả ể false
  puts "number là số chẵn"
else
  puts "number là số lẻ"
  end



    x = { "a" => 1, "b" => 2, "c" => 3 }

# Kiểm tra x có phương thức invert không
if x.respond_to? :invert
  # Nếu có, gán giá trị của x.invert cho y
  y = x.invert
  puts y
else
  puts "Đối tượng x không hỗ trợ phương thức invert."
end

 o = {"x" => 1, "y" => 2, "z" => 3}

if o.respond_to? :invert #respond_to ktra 1 method trong 1 đối tượng
     q  = o.invert
     puts q

     else
      puts "not invert in o"
end

if o.respond_to? :select # ktra mảng o có method select hay ko,có thì trả về true ko thì trả về false
   puts true
   else
    puts false
end

xc=1
puts false if xc == 2 # không thực hiện vì xc =1

  f = 5
  if f < 10    # if ktra điều kiện trụ nếu if (false) sẽ ko chạy
    puts "f nhỏ hơn 10"
    else
      puts "f lớn hơn 1"
  end

  unless  f<10  #unless ktra điều kiện false nếu unless(true) sẽ không chạy
    puts "f lớn hơn 10"
    else
      puts "f nhỏ hơn 10"

  end

   # ví dụ về cộng 2 đối tượng
  class MyClass
    attr_accessor :value

    def initialize(value)
      @value = value
    end

    def +(other)
      MyClass.new(@value + other.value)
    end
  end

  a = MyClass.new(5) # khởi tạo đối tượng a
  b = MyClass.new(10) #khởi tạo đối tượng b

  result = a + b  # Khi a + b được gọi, Ruby tìm phương thức + trong lớp của đối tượng a.
  #Phương thức + nhận một tham số other, đại diện cho đối tượng b (đối tượng được cộng vào).
  #Thực hiện phép cộng giữa giá trị @value của a và other.value của b.
  #Tạo ra một đối tượng mới của lớp MyClass với giá trị là kết quả của phép cộng.
  # resul là một đối tượng mới của class MyClass
  puts result.value #15

  $i=0
  while $i < 10
    $i+=1
    print $i," "
    end

    print "\n"
