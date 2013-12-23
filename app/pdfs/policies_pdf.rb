class PoliciesPdf < Prawn::Document

	def initialize(policy)
		super()
		@policy = policy
		stroke_horizontal_rule
		pad_top(30) {}
		text "Report",:align => :center, :size => 30, :style => :bold
		text "Policy Name: #{@policy.p_name}", :size =>  10
		move_down(30)
		text "Policy Code: #{@policy.p_code}", :size =>  10
		move_down(30)
		text "Policy Scope:", :size =>  10
		text " #{@policy.p_scope}", :size =>  10
		move_down(30)
		text "Policy Objective:", :size =>  10
		text " #{@policy.p_objective}", :size =>  10
	end
end