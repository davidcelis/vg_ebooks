require 'twitter_ebooks'

Ebooks::Bot.class_eval do
  GAMES     = File.read(File.expand_path('../../../db/games.txt')).split("\n")
  FRAGMENTS = File.read(File.expand_path('../../../db/fragments.txt')).split("\n")

  def make_game
    GAMES.sample.sub('____', FRAGMENTS.sample)
  end
end
