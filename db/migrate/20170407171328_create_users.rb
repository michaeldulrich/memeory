class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "username"
      t.string "email"
      t.boolean "is_admin"
      t.string "password_digest"
      t.timestamps
    end
    add_index("users", "username")
    add_index("users", "email")
  end
end
