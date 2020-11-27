class AddGroupRefToStudents < ActiveRecord::Migration[6.0]
  def change
    add_reference :students, :group, null: false, foreign_key: true
  end
end
