class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :uuid
      t.string :longtitude
      t.string :latitude
      t.string :device_id
      t.string :model
      t.string :cost
      t.string :remarks
      t.string :status

      t.timestamps
    end
  end
end
