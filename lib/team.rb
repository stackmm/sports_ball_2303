class Team
  attr_reader :name, :city, :roster, :player_count,
              :long_term_players, :short_term_players

  def initialize(name, city)
    @name = name
    @city = city
    @roster = []
    @player_count = 0
    @long_term_players = []
    @short_term_players = []
  end

  def add_player(player)
    @roster << player
    @player_count += 1

    if player.contract_length > 24
      @long_term_players << player
    else
      @short_term_players << player
    end
  end
  
end