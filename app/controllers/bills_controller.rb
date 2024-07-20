class BillsController < ApplicationController
  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to bills_path, notice: 'Bill created successfully.'
    else
      render :new
    end
  end

  def edit
    @bill = Bill.find(params[:id])
  end

  def update
    @bill = Bill.find(params[:id])
    if @bill.update(bill_params)
      redirect_to bill_path(@bill), notice: 'Bill updated successfully.'
    else
      render :edit
    end
  end
  
  private

  def bill_params
    params.require(:bill).permit(:amount, :bill_type, :employee_id)
  end
end
