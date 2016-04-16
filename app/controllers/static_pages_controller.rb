require 'csv'    
require "open-uri"

class StaticPagesController < ApplicationController
  def home
    url = "http://finance.yahoo.com/d/quotes.csv?s=%5EGSPC&f=nsab"
    parsed = open(url).read().parse_csv
    @stock = Stock.create(name: parsed[0], ticker: parsed[1], ask: parsed[2], bid: parsed[3])
  end
end