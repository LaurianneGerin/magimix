class MusicsController < ApplicationController
before_action :set_music, only: [:show, :edit, :update, :destroy]
  def index
    @musics = Music.all
  end

  def show
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    if @music.save
      redirect_to music_path(@music.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @music.update(music_params)
      redirect_to music_path(@music.id)
    else
      render :edit
    end
  end

  def destroy
    @music.destroy
    redirect_to musics_path
  end

  private

  def music_params
    params.require(:music).permit(:title, :artist, :album, :year, :photo)
  end

  def set_music
    @music = Music.find(params[:id])
  end
end
