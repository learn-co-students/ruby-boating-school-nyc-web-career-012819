class CreateInstructors < ActiveRecord::Migration[4.2]
  def change
    create_table :instructors do |t|
      t.string :name
    end
  end
end
