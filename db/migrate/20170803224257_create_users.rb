class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, limit: 100
      t.string :password_digest
      t.string :name, limit: 100
      t.string :instagram_handle, limit: 50

      t.timestamps
    end
  end
end
