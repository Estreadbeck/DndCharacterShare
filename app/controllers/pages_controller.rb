class PagesController < ApplicationController
  def home
  end

  def about
  end

  def public_characters
    @character = Character.published
  end
end
