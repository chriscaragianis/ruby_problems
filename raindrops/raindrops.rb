class Raindrops
  def self.convert(n)
    result = ''
    result +=  n % 3 == 0 ? "Pling" : ''
    result +=  n % 5 == 0 ? "Plang" : ''
    result +=  n % 7 == 0 ? "Plong" : ''
    result =~ /[P]/ ? result : n.to_s
  end
end
