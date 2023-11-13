  require"ruby_lsp/ruby"

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

        def polar(x,y)
            theta = Math.atan2(y,x)
            r= Math.hypot(x,y)
            [r,theta]
            end

            puts polar(1,2)

           puts (1..10).include?(2)  #(1..10) tương ứng 1 mảng từ 1 -> 10
           puts (1...10).include?(10)   #(1..10) tương ứng 1 mảng từ 1 -> 9 không có 10 

           def are_you_sure 
              while true
                 print "Are you sure? [y/n]:"
                 response =gets
                 case response
                    when /[a-z]/ # /  / đại diện cho biểu thức chính quy bắt đầu và kết thúc 
                        return true
                  when /[nN]/, /^$/ # /^$/ biểu diễn chuỗi rỗng cho biểu thức chính quy , /[nN]] biểu diễn cho 2 kí tự n thường và N hoa khi nhập từ bàn phím
                    return false 
                    end
                    end
              end
              
              puts are_you_sure

              puts 2**6 #tương ứng 2 mũ 6

               puts 0.05-0.03 ==0.02

               puts "this is text"
               puts 'a/b' == 'a//b'

               puts "\t\"this my life\"\n"

               puts "my phone#: 555555"

               puts  "This string has three lines.\n" 

               puts "\u{20AC 20 A3 20 A5}" # /u sử dụng biểu diễn kí tự unicode trong chuỗi

         puts "doan" + " " "thanh "

         alphabet = "A"
         alphabet < ?B
         alphabet >?C
         alphabet <=?D
         
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

        s.encoding
      puts s

  