class ServiceEntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_car
  before_action :set_service_entry, only: [:show, :edit, :update, :destroy]

  # GET cars/1/service_entries
  def index
    @service_entries = @car.service_entries
  end

  # GET cars/1/service_entries/1
  def show
  end

  # GET cars/1/service_entries/new
  def new
    @service_entry = @car.service_entries.build
  end

  # GET cars/1/service_entries/1/edit
  def edit
  end

  # POST cars/1/service_entries
  def create
    @service_entry = @car.service_entries.build(service_entry_params)

    if @service_entry.save
      redirect_to([@service_entry.car],)
    else
      render action: 'new'
    end
  end

  # PUT cars/1/service_entries/1
  def update 
    if @service_entry.update_attributes(service_entry_params)
      redirect_to([@car])
    else
      render action: 'edit'
    end
  end

  # DELETE cars/1/service_entries/1
  def destroy

    @service_entry.destroy
    respond_to do |format|
      format.html { redirect_to cars_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = current_user.cars.find(params[:car_id])
    end

    def set_service_entry
      @service_entry = @car.service_entries.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_entry_params
      params.require(:service_entry).permit(:service, :date, :mileage, :comments, :car_id)
    end
end
