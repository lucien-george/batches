class OrangeTree
  attr_reader :age, :height, :fruits

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def dead?
    @dead
  end

  def one_year_passes!
    unless dead?
      may_die!
      grow!
      produce_fruits!
    end
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits.positive?
  end

  private

  def may_die!
    if @age == 100
      @dead = true
    elsif @age > 50
      @dead = (@age >= rand(51..100))
    end
  end

  def grow!
    @age += 1
    @height += 1 if @age <= 10
  end

  def produce_fruits!
    if @age > 5 && @age < 10
      @fruits = 100
    elsif @age >= 10 && @age < 15
      @fruits = 200
    else
      @fruits = 0
    end
  end
end
