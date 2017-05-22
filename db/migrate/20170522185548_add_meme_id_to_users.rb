class AddMemeIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column("users", "meme_id", :integer)
    add_index("users", "meme_id")
  end
end
