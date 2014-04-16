class CompaniesController < ApplicationController
	before_action :set_company, only: [:show, :edit, :update]
	
	def index
		if params[:search]
      		@companies = Company.search(params[:search]).order("created_at DESC")
    	end
    	@collector = current_collector
	end

	def show
		@company = Company.find(params[:id])
	end

	def edit
		#@company = Company.find(params[:id])
	end

  # PATCH/PUT /companys/1
  # PATCH/PUT /companys/1.json
  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Empresa atualizada com sucesso!.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companys/1
  # DELETE /companys/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:nome, :cnpj, :telefone, :email, :celular, :contato,:collector_id)
    end

end
