require 'twitter_ebooks'

Ebooks::Bot.class_eval do
  GAMES     = File.read(File.expand_path('../../../db/games.txt', __FILE__)).split("\n")
  FRAGMENTS = File.read(File.expand_path('../../../db/fragments.txt', __FILE__)).split("\n")

  def make_game
    GAMES.sample.sub('____', FRAGMENTS.sample)
  end
end
