class UpdateMemes < ActiveRecord::Migration[5.0]
  def change
    remove_column("memes", "content_type")
    rename_column("memes", "content", "text")
  end
end
