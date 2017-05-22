class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.integer "user_id"
      t.string "name"


      t.timestamps
    end
    add_index("images", "user_id")
    add_attachment :images, :upload
  end
end
