class ImagesController < AccessController

  def index
    @images = Image.recent
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.user_id = session[:user_id]
    if @image.save
      flash[:notice] = "You saved a new image! Great work."
      redirect_to(images_path)
    else
      render('new')
    end
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update

  end

  def delete
    @image = Image.find(params[:id])
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to(images_path)
  end

  private

  def image_params
    params.require(:image).permit(:upload, :name)
  end
end
