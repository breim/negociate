module CompaniesHelper
	
	def br_date(date)
    	# formatting date: Aug, 31 2007 - 9:55PM
    	date.strftime("%d/%m/%Y - %H:%M")
  	end

  	def br_data_dia_mes_ano(date)
  		date.strftime("%d/%m/%Y")
  	end



  	# Resource para deixar o sign_up de secreatries dentro da schools_show
  	def resource_name
		:company
	end

	def resource
		@resource ||= Company.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:company]
	end	

end
