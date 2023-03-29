class Team
  attr_reader :name, :city, :roster, :player_count

  def initialize(name, city)
    @name = name
    @city = city
    @roster = []
    @player_count = 0
  end

  def add_player(player)
    @roster << player
    @player_count += 1
  end
end