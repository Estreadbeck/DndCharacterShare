module CharactersHelper
  def image_generator(height:, width:)
    "http://via.placeholder.com/#{height}x#{width}"
  end

  def character_img img 
    if img.model.character_image?
      img
    else
      image_generator(height: '350', width: '350')
    end
  end
  


end
