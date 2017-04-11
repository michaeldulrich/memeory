class MemesController < ApplicationController

  def index
    @memes = Meme.recent
  end

  def show

  end

  def new
    @meme = Meme.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def delete

  end

end
