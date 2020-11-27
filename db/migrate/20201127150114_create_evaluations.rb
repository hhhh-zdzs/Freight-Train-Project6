class CreateEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.integer :score
      t.string :comment

      t.timestamps
    end
  end
end
