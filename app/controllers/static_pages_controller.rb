class StaticPagesController < ApplicationController
  def home
    @weather = JSON.load(open("https://api.forecast.io/forecast/c227273194d05f8e76185ef0240d8b42/32.7828508,-96.776557"))
    @headlines = JSON.load(open('http://api.nytimes.com/svc/news/v3/content/all/national,world/.json?limit=6&api-key=3e1ff7ce6406b793cb9adc2f4bb54f03%3A8%3A75020917'))
    @stock = Stock.last
  end

  def chart
    @stocks = Stock.where("created_at >= ?", Date.today.beginning_of_day)
    respond_to do |format|
      format.html
      format.json
    end
  end
end