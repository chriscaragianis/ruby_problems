class Robot
  attr_accessor :name
  @@prng = Random.new(1234)

  def initialize
    @name = 'AA'
    while @name.length < 5 do
      @name << @@prng.rand(0..9).to_s 
    end
  end

  def reset
    initialize
  end

end
