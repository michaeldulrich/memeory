class RemoveImagesFromMemes < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :memes, :image
  end
end
