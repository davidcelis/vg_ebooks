require 'twitter_ebooks'
require File.expand_path '../../wordnik/client', __FILE__

Ebooks::Bot.class_eval do
  GAMES = File.read(File.expand_path('../../../db/games.txt', __FILE__)).split("\n")

  def tweet_game_of_the_day
    tweet GAMES.sample.sub('____', word_of_the_day)
  end

  private

  def word_of_the_day
    return @word_of_the_day if defined?(@word_of_the_day)

    response = Wordnik::Client.new.get('/words.json/wordOfTheDay')
    @word_of_the_day = response.body['word']
  end
end
