class Hanoi
  attr_accessor :towers

  def initialize
    @towers = [[3,2,1],[],[]]
  end

  def move(pos)
    from = pos[0]
    to = pos[1]
    raise "move is out of range" if pos.any?{|el| !el.between?(0, 2) }
    raise "stack is empty" if towers[from].empty?
    raise "disk too large" if !towers[to].empty? && towers[from].last > towers[to].last
    towers[to].push(towers[from].pop)
  end

  def won?
    return towers[1] == [3, 2, 1] || towers[2] == [3, 2, 1]
  end
end
