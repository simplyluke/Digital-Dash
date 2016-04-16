

class StaticPagesController < ApplicationController
  def home

    @stock = Stock.last
  end
end