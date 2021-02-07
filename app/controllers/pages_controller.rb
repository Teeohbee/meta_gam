class PagesController < ApplicationController
  def home
  end

  def top_ten
    response = HTTParty.get('https://api.opencritic.com/api/game?platforms=xb1&sort=score')
    @top_ten_games = response[0..9].map { |game| OpenStruct.new(name: game['name'], img: 'https:' + game["bannerScreenshot"]["fullRes"]) }
  end
end
