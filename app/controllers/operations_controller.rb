class OperationsController < ApplicationController

  before_filter :find_operation, only: [:show, :edit, :update, :destroy]


#  def index
#    @operations = Operation.all
#  end

  def index
    @search = Operation.search(params[:q])
    @operations = @search.result
  end

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
    def find_operation
      @operation = Operation.find(params[:id])
    end

end