class OperationsController < ApplicationController

  before_filter :find_company
#, only: [:show, :edit, :update, :destroy]

  def create
#    @article = Article.find(params[:article_id])
    @operation = @company.operations.create(operation_params)
    redirect_to company_path(@company)
  end

  def destroy
#    @article = Article.find(params[:article_id])
    @operation = @company.operations.find(params[:id])
    @operation.destroy
    redirect_to company_path(@company)
  end

  private
    def operation_params
      params.require(:operation).permit(:invoice_num, :invoice_date, :operation_date, :amount, :reporter, :notes, :status, :kind, :category_ids => [])
    end

  private
    def find_company   
      @company = Company.find(params[:company_id])
    end

end