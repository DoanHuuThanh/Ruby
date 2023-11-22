def multiplider(n)
  lambda { |data| data.collect {|x| x* n}}
end

 lamda1 = multiplider(3)
 print lamda1.call([1,2,3]), "\n"


 def init(initvalue)
    value = initvalue
    get= lambda {value}
    set = lambda {|x| value = x }

    return get,set
 end

 get,set = init(10)
 puts get[] #kq là 10
 set[20]
 puts get[] #kq là 20 , đơn giản là vì get và set cùng truy cập 1 biến trong 1 hàm vậy nên khi set khởi tạo giá trị khác thì set trả về giá trị theo set

  value1= 15
 get1= lambda {value1}
 set1 = lambda {|x| value1 = x }


 #khi value1 thay đổi tức là get1 sẽ trả về value1 và khi set1 truyền 19 là đối số value1 trở thành 19 nên get1 trả về 19
 puts get1[] #kq là 15
 set1[19]
 puts "value1 : #{value1}" #kq là 19 vì value1 đã đc đổi là 19
 puts get1[] #kq là 19,


#rất giống với proc , dễ bảo trì và tái sử dụng
def squere(x); x*x; end

a = (1..10).map(&method(:squere))


print a,"\n"



#dễ dùng,dễ bảo trì và dễ tái sử dụng
def binhphuong(y); y % 2 == 0 ; end

b = [1,2,3,4,5,6,7]
b1 = b.select( &method(:binhphuong))
print b1,"\n"







module Functional

  def apply(enum)
  enum.map &self
  end
  alias | apply

  def reduce(enum)
  enum.inject &self
  end
  alias <= reduce

  def apply_head(*first)
    lambda {|*rest| self[*first.concat(rest)]} # seft ở đây là  1 lambda vì khi gọi lamda.apply_head thì seft[đối số] trả
    end
    alias >> apply_head
 end



 square = lambda { |x| x * 2 }
 square.extend(Functional)
array1 = [1, 2, 3, 4, 5]

result1 = square | array1


puts result1

multiply_by_2 = lambda { |x, y,z| x * y * z }
multiply_by_2.extend(Functional)
double = multiply_by_2 >> 2
result1 = double.call(5,3)
puts result1

d = lambda { |x,y| x * y }

c =  lambda {|*rest| d[*[3].concat(rest)]}

puts c.call(5)

arrr = [1, 2, 3, 4, 5]
sum,n=0,0
arrr.each do |x|
sum+=x;
n+=1
end

if n ==0
  puts nil
else
  puts sum/n

end


class Point
  def initialize(x,y)
  @x, @y = x, y
  end
  def to_s # Return a String that represents this point
  "(#@x,#@y)" # Just interpolate the instance variables into a string
  end
 end

 p = Point.new(1,2)

 puts p.to_s


class Multa
  def initialize(x,y)
   @x,@y = x,y
  end

  def x; @x; end
  def y; @y; end

  def x=(value)
    @x = value
    end

  def y=(value)
    @y = value
    end

end

m  = Multa.new(1,2)
m.x = 10
m.y = 20

puts m.x
puts m.y


class Mth
  attr_accessor :x,:y

  def initialize(x,y)
  @x, @y = x, y
  end
   #######################
   def -@
     Mth.new(-@x, -@y)
   end

   ###############################
   def [](index)
    case index
    when 1,-1
      return @x
      when 2,-2
      return @y
      when :x, "x"
        return @x
        when :y, "y"
        return @y
        else nil

    end

  end
     ###########################
    def each
     yield @x
     yield @y
    end

    #########################
    def ==(o)
     if o.is_a? Mth
   @x==o.x && y ==o.y
     elsif
       false
     end
     end
     #########################  is_a ktra trả về true nếu o là 1 thể hiện của Mth, instance_of giống is_a nhưng ko xét kế thừa
     def eql?(o)
      if o.instance_of? Mth
      @x.eql?(o.x) && @y.eql?(o.y)
      else
        false
      end
     end
     #########################
     def <=>(other)
      return nil unless other.instance_of? Mth
       @x**2 + @y**2 <=> other.x**2 + other.y**2
     end
     #########################
      def add!(p)
       @x = @x+ p.x
       @y = @y+ p.y
       self # trả về chính đối tượng đc gọi đã đc thay đổi
      end

     #########################
      def add(p)
       q = self.dup # tạo bản sao để khi thực hiện giá trị của đối tượng ko thay đổi
       q.add!(p)
      end



end



a = Mth.new(1,2)
c = -a
puts c.x
puts c.y

puts a["x"]

a.each {|x| print x," "}
print "\n"

b=[1,2,3,4,5]
boll = b.all? do |x|  #ktra tất cả  có lớn hơn 0 nếu lớn hơn trả về true , ko trả về false
 x > 0

end

print boll,"\n"
  e = Mth.new(2,3)
  d = Mth.new(2,3)
  puts a==d  # trả về false vì a và d có giá trị khác nhau
  puts e==d  # trả về true vì e và d có giá trị giống nhau
  puts a.eql?(d) # trả về false vì cả 2 ko cùng giá trị x, y
  puts e.eql?(d) # true vì cả 2 cùng có giá trị x,y
  g= Mth.new(3,2)
  puts g<=>d # trả về 0
  puts g==d # false vì g ko thể bằng d


  m= e.add!(d)
  puts m.x
  puts m.y

  h= d.add(g)
  puts "g.x = #{h.x}" #kq :5
  puts "g.y = #{h.y}" #kq :5

  puts "g.x = #{d.x}" #kq :3
  puts "g.y = #{d.y}" #kq :2



  Poi = Struct.new(:x,:y)

  p = Poi.new(3,2)
   puts p.x
   puts p.y

   puts p[0] # tương ứng p.x
   puts p[1] # tương ứng p.y

   p[:x] = 4 # tương ứng gán p.x =4
   p[:y] = 10 # tương ứng gán p.y =10
   puts p[:x]
   puts p[:y]

 p.each {|x | puts x}

 g.each {|x| puts x}

 p.each_pair {|x,n| print x,":",n,"\n"} # duyêtj 1 hash :x = 4, :y =10


 Poin = Struct.new(:x,:y)

 class Poin
   def <=> (other)
    return nil unless other.instance_of? Poin
      self.x**2 +self.y**2 <=> other.x**2 + other.y**2
   end
 end

 p1 = Poin.new(3,4)
 p2 = Poin.new(4,5)

 puts p1 <=> p2 # trả về -1


class Tinh
   attr_accessor :x, :y
   def initialize(x,y)
    @x, @y = x,y
    end

    def Tinh.sum(*point) # hoặc seft.sum(*point)
      x,y = 0,0
      point.each do |p|
        x += p.x
        y += p.y
    end
        Tinh.new(x,y)
    end

end

s1 = Tinh.new(1,2)
s2 = Tinh.new(3,4)
s3 = Tinh.new(4,5)
s4 = Tinh.new(5,6)

s = Tinh.sum(s1,s2,s3)
  print "s.x = #{s.x}", " ", "s.y = #{s.y}","\n"


  # hoặc

  class Po
    attr_accessor :x, :y
    def initialize(x,y)
      @x, @y = x,y
    end
  end

  class << Po
  def sum(*point)
    x,y = 0,0
      point.each do |p|
        x += p.x
        y += p.y
        end
        Po.new(x,y)
  end
  end

  v1 = Po.new(1,2)
  v2 = Po.new(3,4)
  v3 = Po.new(4,5)


      v = Po.sum(v1,v2,v3)
      print "v.x = #{v.x}", " ", "v.y = #{v.y}","\n"




    #Class Variables,Class Instance Variables

    class So
    @@totalX = 0
    @@totalY = 1

    attr_accessor :x,:y # đây là class instance variable
     def initialize(x,y)
      @x = x
      @y = y

      @@totalX +=xda
      @@totalY +=y
     end

      def self.respond
        puts "Average X coordinate: #{@@totalX.to_f}"
         puts "Average Y coordinate: #{@@totalY.to_f}"
      end

    end

    x1 = So.new(1,2) #instance variable sẽ thay đổi theo mỗi đối tưởng ở đây x=1,y=2
    So.respond  #khi khoi tạo x1 vs x=1,y=2 @totalX = 1, @totaly = 2
    x2 = So.new(3,4)  #khi khoi tạo x2 vs x=3,y=4 @totalX = 1+3, @totaly = 2+4, ở đây x=3,y=4
    So.respond  #kq là @totalX = 4 , @totalY =7
