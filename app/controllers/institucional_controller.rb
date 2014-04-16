class InstitucionalController < ApplicationController
	def index
		if current_collector.present?
			redirect_to system_index_path 
		end
	end
end
