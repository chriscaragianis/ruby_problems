class Prime
  
  def square_root(n)
    @square_root ||= {}
    @square_root[n] ||= (
      Math.sqrt(n)
    )
  end

  def nth_memoized(index)
    raise ArgumentError unless index > 0 
    primes = []
    counter = 2
    prime = true
    while index > 0 do
      primes.each do |p|
        p > square_root(counter) ? break : nil
        counter % p == 0 ? prime = false : nil
      end
      if prime then
        primes << counter
        index -= 1
      end
      counter += 1
      prime = true
    end       
    return primes.last
  end 
 
end

