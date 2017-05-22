class MemesController < AccessController

  before_action :confirm_logged_in

  def index
    @memes = Meme.recent
  end

  def show

  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      flash[:notice] = "You just created a new meme!"
      redirect_to(memes_path)
    else
      render('new')
    end
  end

  def edit
    @meme = Meme.find(params[:id])
  end

  def update
    @meme = Meme.find(params[:id])
    if @meme.update_attributes(meme_params)
      flash[:notice] = "You updated your meme!"
      redirect_to(memes_path)
    else
      render('edit')
    end
  end

  def delete
    @meme = Meme.find(params[:id])
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy
    redirect_to(memes_path)
  end

  private

  def meme_params
    params.require(:meme).permit(:name, :content_type, :content, :image)
  end

end
