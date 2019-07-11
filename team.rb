class Team
  include Enumerable # LOTS of functionality
  attr_accessor :name, :players  

  def initialize (name)
    @name = name
    @players = []
  end
  def add_players (*players) # splat
    players.each { |player| @players << player }
  end
  def to_s
    "#{@name} team: #{@players.join(", ")}"  
  end

  def each
    # yield explained later
    @players.each { |player| yield player } 
  end  

end
