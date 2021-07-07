class AddStudentToBoatingTests < ActiveRecord::Migration[4.2]
  def change
    add_column :boating_tests, :student_id, :integer
  end
end
