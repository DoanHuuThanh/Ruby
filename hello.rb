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
        puts a.include?(3)  #ktra 3 có nằm trong mảng a ko

        x,y = 1,2

        puts x, y