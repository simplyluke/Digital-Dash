class StaticPagesController < ApplicationController
  def home

    @stock = Stock.last
  end

  def chart
    @stocks = Stock.where("created_at >= ?", Time.zone.now.beginning_of_day)
    respond_to do |format|
      format.html
      format.json {render json:@stocks}
    end
  end
end