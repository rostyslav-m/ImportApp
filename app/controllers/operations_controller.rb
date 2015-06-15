class OperationsController < ApplicationController

  before_filter :find_operation, only: [:show, :edit, :update, :destroy]

  def index
    @search = Operation.search(params[:q])
    @operations = @search.result
      respond_to do |format|
        format.html
        format.csv { send_data @operations.to_csv }
      end
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @operation = Operation.new(operation_params)
    if @operation.save
      redirect_to @operation.company
    else
      render 'new'
    end
  end

  def update
    if @operation.update(operation_params)
      redirect_to @operation
    else
      render 'edit'
    end
  end

  def destroy
    @operation.destroy
    redirect_to  @operation.company
  end

  def import
    begin
      Operation.import(params[:file])
      redirect_to operations_path, notice: "Operations import Successfully"    
    rescue
      redirect_to operations_path, notice: "Invalid CSV file format."
    end
  end

  private

    def find_operation
      @operation = Operation.find(params[:id])
    end

    def operation_params
      params.require(:operation).permit(:invoice_num, :invoice_date, :operation_date, :amount, :reporter, :notes, :status, :kind, :company_id, :category_ids => [])
    end

end