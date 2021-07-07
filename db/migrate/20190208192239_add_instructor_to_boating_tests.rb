class AddInstructorToBoatingTests < ActiveRecord::Migration[4.2]
  def change
    add_column :boating_tests, :instructor_id, :integer
  end
end
