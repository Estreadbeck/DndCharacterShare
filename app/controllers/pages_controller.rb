class PagesController < ApplicationController
  def home
  end

  def about
  end

  def public_characters
    @character = Character.published.recent
  end

  def admin_dashboard
    if logged_in?(:site_admin)
      @character = Character.all
      @character_class = CharacterClass.all
      @race = Race.all
      @archetype = Archetype.all
    else
      redirect_to root_path, message: "You are not authorized to access this page"
    end
  end
end
