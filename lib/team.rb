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

  def total_value
    total_value = 0

    @roster.each do |player|
      total_value += player.total_cost
    end
    total_value
  end

  def details
    "{total_value => #{total_value}, player_count => #{player_count}}"
  end

  def average_cost_of_player
    average_cost = total_value / player_count.to_f
    "$#{format('%.f', average_cost).gsub(/(\d)(?=(\d\d\d)+(?!\d))/, '\1,')}"
  end

  def players_by_last_name
    players_hash = {}

    @players.each do |player|
      players_hash[player.last_name] = [] unless players_hash.key?(player.last_name)
      players_hash[player.last_name] << player.first_name
    end

    players_hash = players_hash.sort.to_h

    # Didn't finish this part -- ran out of time while researching Hash

  end

end