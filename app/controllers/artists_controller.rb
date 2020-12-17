class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to @artist
  end

  #has find_artist before_action method
  def show
  end

  #has find_artist before_action method
  def edit
  end

  def update
    @artist = Artist.update(artist_params)
    redirect_to @artist
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end

end
