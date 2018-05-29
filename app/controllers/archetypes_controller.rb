class ArchetypesController < ApplicationController
  before_action :set_archetype, only: [:edit, :update, :destroy, :show]
  access site_admin: :all

  def index
    @archetypes = Archetype.all
  end

  def show
    
  end

  def new
  @archetype = Archetype.new
  
  end

  def create
    @archetype = Archetype.new(archetype_params)

    respond_to do |format|
      if @archetype.save
        format.html { redirect_to admin_dashboard_path, notice: 'Archetype has been saved.' }
        
      else
        format.html { render :new }
      end 
    end
  end

  def edit
    
    
  end

  def update
    

    respond_to do |format|
      if @archetype.update(archetype_params)
        format.html { redirect_to admin_dashboard_path, notice: 'Archetype was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end


  def destroy
    @archetype.destroy
    respond_to do |format|
      format.html { redirect_to admin_dashboard_path, notice: "#{@archetype.name} has been deleted." }
      
    end
  end

  private

  def set_archetype
    @archetype = Archetype.find(params[:id])
  end

  def archetype_params
    params.require(:archetype).permit(:name,
                                :description,
                                :level,
                                :character_class_id,
                                archetype_features_attributes: [:id, :feature_name, :feature_desc, :feature_level, :_destroy]                                      
                                )
  end

end