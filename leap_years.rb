print "starting year: "
sy = gets.chomp.to_i
print "ending year: "
ey = gets.chomp.to_i

(sy..ey).each { |i|
  if i % 4 == 0
    unless i % 100 == 0 && i % 400 != 0
      puts i
    end
  end
}