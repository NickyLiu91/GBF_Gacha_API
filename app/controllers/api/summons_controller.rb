class Api::SummonsController < ApplicationController
  before_action :find_summon, only: [:show]
  def index
    @summons = Summon.all
    render json: @summons
  end

  def show
    render json: @summon
  end

  private

  def summon_params
    params.require(:summon).permit(:id, :name, :type)
  end

  def find_summon
    @summon = Summon.find(params[:id])
  end
end
