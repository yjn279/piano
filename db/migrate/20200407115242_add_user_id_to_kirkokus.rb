class AddUserIdToKirkokus < ActiveRecord::Migration[5.2]
  def change
      add_column :kirkokus, :user_id, :integer
  end
end
