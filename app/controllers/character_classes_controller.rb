class CharacterClassesController < ApplicationController
  before_action :set_character_class, only: [:edit, :update, :destroy, :show]
  access site_admin: :all

  def index
    @character_classes = CharacterClass.all
  end

  def show
    @character_class = CharacterClass.friendly.find(params[:id])
  end

  def new
  @character_class = CharacterClass.new
  
  end

  def create
    @character_class = CharacterClass.new(character_class_params)

    respond_to do |format|
      if @character_class.save
        format.html { redirect_to admin_dashboard_path, notice: 'Class has been saved.' }
        
      else
        format.html { render :new }
      end 
    end
  end

  def edit
    
    
  end

  def update
    

    respond_to do |format|
      if @character_class.update(character_class_params)
        format.html { redirect_to admin_dashboard_path, notice: 'Class was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  def show
    @character_class = CharacterClass.friendly.find(params[:id])
  end

  def destroy
    @character_class.destroy
    respond_to do |format|
      format.html { redirect_to admin_dashboard_path, notice: "#{@character_class.title} has been deleted." }
      
    end
  end

  private

  def set_character_class
    @character_class = CharacterClass.friendly.find(params[:id])
  end

  def character_class_params
    params.require(:character_class).permit(:title,
                                            :description                                      
                                            )
  end
end