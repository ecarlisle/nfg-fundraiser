class CreateFundraisers < ActiveRecord::Migration
  def change
    create_table :fundraisers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :goal_amount
      t.integer :current_amount

      t.timestamps null: false
    end
  end
end
