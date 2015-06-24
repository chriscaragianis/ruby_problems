class Fixnum
  def to_roman
    result = "M"*(self/1000)
    raw_powers = ["I", "X", "C"]
    powers = [["I", "V", "X"], 
              ["X", "L", "C"],
              ["C", "D", "M"]]
    # p is a list with as many "c"s as hundreds, etc
    unreduced = [0,1,2].map{|n| raw_powers[n]*(self%10**(n+1)/10**n)}
    reduced_1 = unreduced.each_with_index.map {|s, i| s.sub(/.{9}/, powers[i][0] + powers[i][2] ) }
    reduced_2 = reduced_1.each_with_index.map {|s, i| s.sub(/#{raw_powers[i]}{5}/, powers[i][1] ) }
    reduced_3 = reduced_2.each_with_index.map {|s, i| s.sub(/#{raw_powers[i]}{4}/, powers[i][0] + powers[i][1])}  
    result << reduced_3.reverse.join
  end
end
