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
  while $i < 10 # while thực hiện câu lệnh true
    $i+=1
    print $i," "
    end

    print "\n"

     $y = 0
  until $y > 10 #until thực hiện câu lệnh là false
    $y += 1
    print $y," "
  end

  print "\n"


  r = [1,2,3,4,5,6]
  r.pop # xóa phần tử cuối
  r.push(3) # thêm vào cuối mảng phần tử 3
   print r," "
   print "\n"

   w = [3,5,1,2,5,1]
   w1 = w.sort # sắp xếp mảng w và gán vào mảng w1
   print w1.inspect
    print "\n"

     x =1
    begin
      x += 1
      print x, " "
      end while x< 10# or until x >=10
      print "\n"

      fac = 1
      2.upto(10) { |x| fac *=x}
        puts fac

        even = (1..10).reject { |x| x % 2 == 0  } # reject được sử dụng để loại bỏ các phần tử của mảng dựa trên một điều kiện được định nghĩa.

        print even, " ", "\n" # kq là  1,3,5,7,9


        t = [1,3,4,5,1,2,3,1]

        tong = t.inject(0) {|sum,x| x.even? ? sum+x : sum} # là giá trị khởi tạo của sum, sum =0,inject hay còn đc coi là reduce
        puts tong
        max = t.inject {|max , x|  x.even?  ? max > x ? max: x : max }
        puts max


        def sequence(n,m,c)
             i,s=0,[]
            while i < n
              y= m*i + 1
              yield y if block_given?
              s<< y
              i+=1
            end
            return s
        end


        result = sequence(4,2,3) {|y| puts y}

        puts result.inspect

        def price
           yield "won"
           yield "Đồng"
           yield "$"
        end

        price {|y| puts "giá của bạn là 20000 #{y}" }


        def example_method
          yield(self) if block_given?
        end

        example_method do |obj|
          puts "Inside the block with #{obj}"
        end

        def twice
          if block_given?
          yield
          yield
          else

          end
         end

         twice


         iterator = 9.downto(1) # An enumerator as external iterator
         begin # So we can use rescue below
          print iterator.next while true # Call the next method repeatedly
         rescue StopIteration # When there are no more values
          puts "...blastoff!" # An expected, nonexceptional condition
         end

         iterator = 3.downto(1)

         begin
           loop do
             puts iterator.next
           end
         rescue StopIteration
           puts "Iteration finished!"
         end


          count = 0

          loop do # loop  end  trong ruby là cấu trúc lặp vô hạn đến khi có câu lệnh break;hoặc 1 exception
            puts "This is iteration number #{count}"
             count +=1
             if count >=5
                  break;
             end
          end


           # sử lí ngoại lệ trong ruby
          def tinh(a,b)
            result = nil
            begin
              result = a / b  #mã có thể tạo ra ngoại lệ
            rescue ZeroDivisionError => e
              puts "Error : #{e}"  #xử lí ngoại lệ
              else
                puts "Result : #{result}" # mã chạy khi ko có ngoại lệ
            ensure
              puts "Ensure block alaway run" # luôn luôn chạy cuối cùng bất kể có ngoại lệ
           end
          end


          tinh(10,0)
          tinh(10,2)


          a1 = (1..6)
          a2= [1,2,3]

         def sequence(*enumber,&block)
             enumber.each {
                  |enumber| enumber.each(&block) # chuyển khối mã vào each không được dùng yield
             }
         end
           # *enumber là một cú pháp để chấp nhận một số lượng biến đối số không xác định (nhiều đối số) và gói chúng vào một mảng.
           # Khi bạn gọi hàm và truyền nhiều đối số, *enumerables sẽ gói tất cả các đối số vào một mảng duy nhất
          sequence(a1,a2) {|x| print x," "}  #  mảng đc truyền vào hàm sequence là [a1,a2], [(1..6),[1,2,3]]
          print "\n"

          #PROC

            # proc đại diện cho 1 đoanj mã

            my_proc = proc {|x| puts x*2}
             my_proc.call(5) # my_proc.call thể thực thi proc

             #có thể truyền proc vào nhiều method khác nhau
             #vd
                  arr = [1,2,3,4,5,6]
                 my_proc1 = proc {|x| x*3}
               new_a = arr.map(&my_proc1)
                      print new_a," "
                   print "\n"
                my_proc2 = proc {|i| i %2 ==0}
                new_b = arr.select(&my_proc2)
                print new_b," "
                print "\n"

                arr_collection = arr.collect do |x| # khi nhiều dòng nên dùng do thay  vì {}, collect tươn tự map
                  if x < 3
                    0
                  else
                    [x,x * x]
                  end
                end
           print arr_collection
           print "\n"

            arr.sort! {|x,y| x<=>y} # sắp xếp tăng dần
            print arr
            print "\n"

            arr.sort! {|x,y| y<=>x} # sắp xếp giảm dần
            print arr
            print "\n"


   def example(&block)
       block.call(1,2) if block_given?
   end

      example { |x,y| puts "giá trị của từng tham số x:#{x}, y:#{y}"}

      #truyền mảng hoặc hash
      def xample(&block)
          yield([1,2,3]) if block_given?
      end

      xample do |arr|
          x,y,z = arr
          puts "giả trị của x =#{x}, y=#{y}, z=#{z}"
      end

      def five(&block)
         yield(1,2,3,4,5) if block_given?
         end

      five do |x,*y,z|
         print x, " ",y, " ",z # x =1 y =[2,3,4] z = 5
      end

      print "\n"




      b1 = 0
      begin
          raise " #{b1} khong the nho hon 3" if b1  <= 3
          puts b1
      rescue => e
           puts e.message
           b1+=1
           retry if b1 <= 4
       ensure
        puts "Chuong trình hoàn tất"

        end

        def connect_db(number)
          n = number
          i=0
          while i < 5
            n-=1
            i+=1
            puts n
           # raise ArgumentError, "Credentials missing" if n == 3 # trả về 1 ngoại lệ nếu n  = 3
          end

        end

         connect_db(5)


         result = catch (:done) do
          10.times do |i|
            5.times do |j|
              if i + j > 5
                throw :done, i * j
              end
            end
          end
        end

        puts "Result: #{result}"

       #Thông thường, throw và catch được sử dụng để thoát khỏi một vòng lặp hoặc một phương thức khi một điều kiện đặc biệt xảy ra, và không phải để xử lý lỗi.
        def throw_catch(data)
          result = catch(:done) do
                 data.each do |x|
                   if x.nil?
                    throw(:done,"Error : nil in data")
                    else
                      puts "item : #{x}"
                   end

                 end
          end
          return result
        end

        data = [1,2,3,nil,4,1]
       puts throw_catch(data)
