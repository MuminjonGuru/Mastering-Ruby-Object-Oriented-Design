class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  attr_accessor :pegs

  def initialize(chars)
    if Code.valid_pegs?(chars)
      @pegs = chars.map(&:upcase)
    else
      raise "pegs are invalid"
    end
  end

  def self.random(length)
    random_pegs = []
    length.times { random_pegs << POSSIBLE_PEGS.keys.sample }
    Code.new(random_pegs)
  end

  def self.from_string(string)
    Code.new(string.split(""))
  end

  def self.valid_pegs?(chars)
    chars.all? { |char| POSSIBLE_PEGS.has_key?(char.upcase) }
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(guess_code)
    count = 0
    (0...guess_code.length).each do |i|
      count += 1 if guess_code[i] == self[i]
    end
    count
  end

  def num_near_matches(guess_code)
    count = 0
    (0...guess_code.length).each do |i|
      if guess_code[i] != self[i] && self.pegs.include?(guess_code[i])
        count += 1
      end
    end
    count
  end

  def ==(other_code)
    self.pegs == other_code.pegs
  end








end

