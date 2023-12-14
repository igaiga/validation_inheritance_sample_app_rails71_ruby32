class CreateFooUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :foo_users do |t|
      t.string :nickname
      t.string :note

      t.timestamps
    end
  end
end
