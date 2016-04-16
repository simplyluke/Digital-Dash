# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  name       :string
#  ticker     :string
#  ask        :float
#  bid        :float
#  created_at :datetime
#  updated_at :datetime
#

require 'csv'    
require "open-uri"
class Stock < ActiveRecord::Base
#%5EGSPC

  def fetch_stocks(tickers)
    tickers = tickers.gsub(/\s+/, "")
    url = "http://finance.yahoo.com/d/quotes.csv?s=#{tickers}&f=nsab"
    parsed = open(url).read().parse_csv
    @stock = Stock.create(name: parsed[0], ticker: parsed[1], ask: parsed[2], bid: parsed[3])

  end
end
