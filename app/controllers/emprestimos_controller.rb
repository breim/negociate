class EmprestimosController < ApplicationController

	def index
		if current_collector.present?
			@collector = current_collector
		else
			redirect_to '/collectors/sign_in'
		end
	end

end
