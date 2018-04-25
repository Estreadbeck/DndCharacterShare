class CharactersController < ApplicationController
  before_action :set_character, only: [:edit, :update, :destroy, :show]
  def index
    @character = Character.all
  end

  def sort
    params[:order].each do |key, value|
      Character.friendly.find(value[:id]).update(position: value[:position])
    end

    render body: nil
  end

# def angular
#  @angular_portfolio_items = Character.angular
# end

  def new
  @character = Character.new
  
  end

  def create
    @character = Character.new(character_params)

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
      format.html { redirect_to characters_url, notice: 'Successfully destroyed. For science. You monster.' }
      
    end
  end

  def set_character
    @character = Character.friendly.find(params[:id])
  end

  private

  def character_params
    params.require(:character).permit(:name,
                                      :race_id,
                                      :character_class_id,
                                      :level,
                                      :backstory,
                                      :character_image
                                      )
  end



end
