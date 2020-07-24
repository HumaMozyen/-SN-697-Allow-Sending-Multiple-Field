class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.integer :owner_id
      t.string :owner_type

      t.timestamps
    end
  end
end
