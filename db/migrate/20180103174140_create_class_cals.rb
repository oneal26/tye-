class CreateClassCals < ActiveRecord::Migration[5.1]
  def change
    create_table :class_cals do |t|
      t.string :name
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
