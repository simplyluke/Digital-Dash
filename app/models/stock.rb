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

class Stock < ActiveRecord::Base
end
