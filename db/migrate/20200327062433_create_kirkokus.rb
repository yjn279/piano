class CreateKirkokus < ActiveRecord::Migration[5.2]
  def change
    create_table :kirkokus do |t|
      t.string :datetime
      t.string :time
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
