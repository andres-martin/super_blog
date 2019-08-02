class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, limit: 100
      t.string :email, limit: 100
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
