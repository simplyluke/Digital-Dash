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

class StocksController < ApplicationController
  def create
    @stock = Stock.create(team_params)
    if @stock.save
      flash[:success] = "Team created!"
      redirect_to root_path
    else
      flash[:alert] = "Team creation failed"
      redirect_to root_path
    end
  end

  private
    def team_params 
      params.require(:stock).permit(:name, :ticker, :ask, :bid)
    end
end
