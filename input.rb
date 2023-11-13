p1 = gets #nhập dữ liệu kiểu chuỗi
p2 = gets 
p3 = p1 + p2
puts p3

m1 = gets.chomp.to_i # nhập kiểu dữ liểu kiểu int 
m2 = gets.chomp.to_i

puts m1 + m2

 n1 = gets.chomp.to_f # nhập dữ liệu kiểu float
 n2 = gets.chomp.to_f 

 puts n1 + n2

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