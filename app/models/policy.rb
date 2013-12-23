class Policy < ActiveRecord::Base
	belongs_to :user
  attr_accessible :p_code, :p_description, :p_name, :p_objective, :p_scope , :attach , :businessunit_id 
  has_attached_file :attach
  belongs_to :businessunits
  belongs_to :documents
end
