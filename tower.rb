class Towers
  def self.disks
  (1..3).to_a.reverse
  end

  def self.default_stacks
    [Towers.disks, [], []]
  end

  def initialize(stacks = Towers.default_stacks)
    @stacks = stacks
  end

  attr_accessor :stacks

  def render
    max_height = @stacks.map(&:count).max

    (max_height - 1).downto(0).map do |height|
      stacks.map do |stack|
        # this || trick says that if stack[height] is `nil` (that is,
        # the stack isn't that high), print `" "` instead of `nil`,
        # because we need a blank space.
        stack[height] || " "
      end.join("\t")
    end.join("\n")
  end

  def display
    puts render
  end

  def won?
    stacks[0].empty? && stacks[1..2].any?(&:empty?)
  end

  def run_game

    until won?
      display
      from_stack_num, to_stack_num = get_moves
      move(from_stack_num, to_stack_num)
    end

    puts "You won!"

  end

  def move(from_stack_num, to_stack_num)
    from_stack, to_stack =
    @stacks.values_at(from_stack_num, to_stack_num)

    raise "Error" if from_stack.empty?
    unless to_stack.empty? || to_stack.last > from_stack.last
      raise "Error"
    end

    to_stack.push(from_stack.pop)

    self
  end

  def get_moves
    from_stack_num = get_stack("move from: ")
    to_stack_num = get_stack("move to: ")

     [from_stack_num, to_stack_num]
  end

  def get_stack(prompt)
    move_hash = {"a" => 0,
                "b" => 1,
                "c" => 2
                }
    loop do
      print prompt
      stack_num = move_hash[gets.chomp]
      return stack_num unless stack_num.nil?
      puts "Invalid move"
    end
  end

end

  tower = Towers.new
  tower.run_game
