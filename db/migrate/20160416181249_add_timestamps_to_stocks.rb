class AddTimestampsToStocks < ActiveRecord::Migration
  def change
    add_timestamps(:stocks)
  end
end
