class ArtistsController < ApplicationController
   
  def index
  end

  def show
  end

  def artist_params
    params.require(:artist).permit(:name)
  end

end
