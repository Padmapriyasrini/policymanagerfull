class Businessunit < ActiveRecord::Base
  attr_accessible :b_area, :b_city, :b_country, :b_name, :b_site, :b_state ,:time_zone
  has_many :policies 
end
