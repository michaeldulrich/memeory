class CreateMemes < ActiveRecord::Migration[5.0]
  def change
    create_table :memes do |t|
      t.integer "user_id"
      t.string "name"
      t.string "content_type"
      t.text "content"
      t.timestamps
    end
    add_index("memes", "user_id")
  end
end
