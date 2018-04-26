class CharactersController < ApplicationController
  before_action :set_character, only: [:edit, :update, :destroy, :show, :toggle_status]
  def index
    if current_user.is_a?(GuestUser)
      redirect_to root_path, notice: "You need to be logged in to access this page"
    elsif current_user
      @character = Character.characters_by(current_user)
    end
  end

  def new
  @character = Character.new
  
  end

  def create
    @character = Character.new(character_params)
    @character.user_id = current_user.id

    respond_to do |format|
      if @character.save
        format.html { redirect_to characters_path, notice: 'Character has been saved.' }
        
      else
        format.html { render :new }
      end 
    end
  end

  def edit
    
    
  end

  def update
    

    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to characters_path, notice: 'Character was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  def show
    @character = Character.friendly.find(params[:id])
  end

  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: "#{@character.name} has been deleted." }
      
    end
  end

  def toggle_status
    if @character.personal?
      @character.published!
    elsif @character.published?
      @character.personal!
    end
        
    redirect_to characters_url, notice: 'Character status has been updated.'
  end


  private

  def set_character
    @character = Character.friendly.find(params[:id])
    @character.user_id = current_user.id
  end

  def character_params
    params.require(:character).permit(:name,
                                      :race_id,
                                      :character_class_id,
                                      :level,
                                      :backstory,
                                      :status,
                                      :user_id,
                                      :character_image
                                      )
  end



end
