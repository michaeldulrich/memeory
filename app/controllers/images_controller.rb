class ImagesController < AccessController

  def index
    @images = Image.recent
  end

  def show
  end

  def new
  end

  def edit
  end

  def delete
  end
end
