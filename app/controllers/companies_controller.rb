class CompaniesController < ApplicationController

  before_filter :find_company, only: [:show, :edit, :update, :destroy]

#  def index
#    @companies = Company.all
#  end

  def index
    @search = Company.search(params[:q])
    @companies = @search.result.includes(:operations)
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to @company
    else
      render 'new'
    end
  end

  def update
    if @company.update(company_params)
      redirect_to @company
    else
      render 'edit'
    end
  end

  def destroy
    @company.destroy
    redirect_to action: "index"
  end

  private
    def company_params
      params.require(:company).permit(:name)
    end

  private
    def find_company  
      @company = Company.find(params[:id])
    end
end