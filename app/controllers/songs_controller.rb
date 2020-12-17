class SongsController < ApplicationController

  before_action :find_song, only: [:show, :edit]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params)
    @artist = @song.artist
    @genre = @song.genre
    redirect_to @song
  end

  #has find_song before_action method
  def show
  end

  #has find_song before_action method
  def edit
  end

  def update
    @song = Song.update(song_params)
    redirect_to @song
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist, :genre)
  end

  def find_song
    @song = Song.find(params[:id])
    @artist = @song.artist
    @genre = @song.genre
  end

end
