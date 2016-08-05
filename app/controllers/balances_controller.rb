class BalancesController < ApplicationController

  def index
    @balance = Balance.all
  end

  def show
    @balance = Balance.find

  end

  def new
    @balance = Balance.new
  end

  def create
    @balance = Balance.new(balance_params)

    if @balance.save
      flash[:notice] = "Balance was saved"
      redirect_to balances_path
    else
      flash[:error] = "There was an error saving your balance. Please try again."
      render :new
    end
  end

  private

  def balance_params
    params.require(:balance).permit(:amount)
  end

end