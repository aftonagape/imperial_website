class CreateDetachments < ActiveRecord::Migration[5.0]
  def change
    create_table :detachments do |t|
      t.string :name
      t.string :website
      t.string :theme

      t.timestamps
    end
  end
end
