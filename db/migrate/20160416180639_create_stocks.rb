class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :ticker
      t.float :ask
      t.float :bid
    end
  end
end
