class BusinessunitsPdf < Prawn::Document

	def initialize( businessunit)
		super()
		 @businessunit =  businessunit
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Business Unit: #{ @businessunit.b_name}", :size =>  10
		move_down(30)
		text "Country: #{ @businessunit.b_country}", :size =>  10
		move_down(30)
	end
end