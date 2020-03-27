class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :start
      t.string :time
      t.string :memo
      t.string :image

      t.timestamps
    end
  end
end
