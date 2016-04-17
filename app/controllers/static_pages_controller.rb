class StaticPagesController < ApplicationController
  def home

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