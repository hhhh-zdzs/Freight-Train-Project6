class AddStudentRefToEvaluations < ActiveRecord::Migration[6.0]
  def change
    add_reference :evaluations, :aboutStudent, references: :students, null: false
    add_reference :evaluations, :submittedStudent, references: :students, null: false
  end
end
