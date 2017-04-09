class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.datetime :start_time
      t.datetime :end_time
      t.text :info
      t.string :coordinator

      t.timestamps
    end
  end
end
