class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.string :uuid
      t.string :longtitude
      t.string :latitude
      t.string :status

      t.timestamps
    end
  end
end
