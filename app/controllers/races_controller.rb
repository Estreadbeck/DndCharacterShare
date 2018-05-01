class RacesController < ApplicationController
  before_action :set_race, only: [:edit, :update, :destroy, :show]
  access site_admin: :all

  def index
    @races = Race.all
  end

  def show
    @race = Race.friendly.find(params[:id])
  end

  def new
  @race = Race.new
  
  end

  def create
    @race = Race.new(race_params)

    respond_to do |format|
      if @race.save
        format.html { redirect_to admin_dashboard_path, notice: 'Race has been saved.' }
        
      else
        format.html { render :new }
      end 
    end
  end

  def edit
    
    
  end

  def update
    

    respond_to do |format|
      if @race.update(race_params)
        format.html { redirect_to admin_dashboard_path, notice: 'Race was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  def show
    @race = Race.friendly.find(params[:id])
  end

  def destroy
    @race.destroy
    respond_to do |format|
      format.html { redirect_to admin_dashboard_path, notice: "#{@race.race_name} has been deleted." }
      
    end
  end

  private

  def set_race
    @race = Race.friendly.find(params[:id])
  end

  def race_params
    params.require(:race).permit(:race_name,
                                :race_description,
                                traits_attributes: [:id, :name, :description, :level, :_destroy]                                      
                                )
  end
end