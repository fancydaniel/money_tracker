class BalancesController < ApplicationController

  def index
    @balance = Balance.all
  end

  def show
    @balance = Balance.find

  end

  def new
    @balance = Balance.new(balance_params)
  end

  private

  def balance_params
    params.require(:balance).permit(:amount)
  end

end