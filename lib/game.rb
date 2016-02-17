class Game
  attr_accessor :title,:platform,:genre
  def initialize(title, platform, genre)
    @title = title
    @platform = platform
    @genre = genre
  end
  # write a method where, if platform is PC, print "PC are great!"
  def eval_platform
    if @platform == "PC"
      puts "PC are great!"
    else
      puts "Your platform is probably underpowered."
    end
  end
end
xcom = Game.new("Xcom 2","PC","Turn-based Strategy")
puts xcom.title
puts xcom.platform
puts xcom.genre
puts xcom.eval_platform