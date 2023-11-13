
puts "helloo"

puts "3conn"

3.times {print "Ruby"}
print "\n"
1.upto(9) {|x| print x}
print "\n"

a=[-1,2,3,4]
b= a.map {|x| x*x } 
print b 
print "\n"

c= a.select {|x| x% 2 !=0 }
print c
print "\n"

def tinhtong(x)
    x + x
end
 
puts tinhtong(1)

def event(number)
    return number.even?
    end

     
puts event(2)


    def range_number(a,b,c)
        return a>=b && a<=c
        end

        puts range_number(2,1,3) 

        puts a.max()  #tìm kiếm giá trị max trong a
        puts a.include?(3)  #ktra 3 có nằm trong mảng a ko trả về true hoặc false

        x,y = 1,2  #tương ứng x=1,y=2
        puts x, y

        #m,n = n,m swap m và n
        a1,a2,a3 = [1,2,3] #tương ứng a1=1,a2=2,a3=3

        puts a1 

              puts 2**6 #tương ứng 2 mũ 6

               puts 0.05-0.03 ==0.02

               puts "this is text"
               puts 'a/b' == 'a//b'

               puts "\t\"this my life\"\n"

               puts "my phone#: 555555"

               puts  "This string has three lines.\n" 

               puts "\u{20AC 20 A3 20 A5}" # /u sử dụng biểu diễn kí tự unicode trong chuỗi

         puts "doan" + " " "thanh "

 
        greeting = "Helllo"
        greeting << " " << "Word"

        puts greeting


        s = 'doanthanh'
        puts s[2] # lấy ra kí tự ở vtri 2
        puts s[-1] # lấy ra kí tự ở vtri cuối cùng của chuỗi
        puts s[0,2] # lấy ra 2 kí tự bắt đầu từ vị trí 0
        puts s[-2,2] # lấy ra 2 kí tự bắt đầu từ vị trí 2 từ cuối chuỗi lên
        puts s[0,-1] # giá trị là nil


        puts s[0..2]  # lấy ra các kí tự từ vị trí 0->2
        puts s[-3..-1] # lấy ra các kí tự từ -3->-1
        puts s[0...0] # chuỗi rỗng
         s[0...0] = "hello "  # thêm vào trc s chuỗi hello
         puts s 

         m1=2
         puts "hnay đc #{m1}m" 
     
         s.each_char {|x| print x} #each_char dùng để lặp 1 chuỗi kí tự
         print "\n" 

         puts s.length

       puts s.encoding

       puts s.bytesize 
     
       encoding = Encoding.find("utf-8")

       puts encoding
  
          
     $KCODE = "u"
     mb = "2\303\2272=4" 
     
     puts mb.length
     puts $KCODE.upcase

     mb.each_byte {|b| print b," "} #each_byte
     print "\n"

      v = [-10..0,0..10,] 
      puts v
      puts v[0].include?(3)

      arr= [1,2,3,4,5,6]
      words = %w[1 2 3 4 5 6]
      print  words # kq sẽ là ["1", "2", "3", "4", "5", "6"]
      print "\n"
      puts arr.length
      puts arr.size  

      z = (1..10).to_a # tạo 1 mảng từ 1->10,to_a dùng để chuyển đổi 1 đối tượng sang 1 mảng ngoài range còn có hash và set
      print z 
          print "\n"
      print z[0..-1] # duyệt mảng từ phần tử đầu đến phần tử cuối
      print "\n"
      
      z1=[16,1,2,5,2,1,5,1]
      z1[0,2] = [1,2]  # Nó thay thế các phần tử bắt đầu từ chỉ số 0 và lấy 2 phần tử của mảng [1,2]. Vì vậy, nếu z1ban đầu là [a, b, c, ...], sau dòng này, nó sẽ trở thành [1, 2, c, ...].
      z1[2...5] = [3,4,5]  # thay thế các phần tử bắt đầu ở chỉ số 2 và kết thúc ở chỉ số 4
      print z1
      print "\n"
    
       z1[0] = 7
       z1[2] = [12]
       print z1
       print "\n" 

       v1 =[1,2,3,4]
       v2 = [5,6,7,8]

       puts v1 + v2 

       puts v2
 
     
   
     