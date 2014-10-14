require 'spec_helper'
require 'vg_ebooks/bot'

RSpec.describe VGEbooks::Bot do
  let(:client) { Twitter::Client.new }

  it 'has a twitter client' do
    bot = VGEbooks::Bot.new(client)
    expect(bot.client).to eq(client)
  end
end
