class CreateBoatingTests < ActiveRecord::Migration[4.2]
  def change
    create_table :boating_tests do |t|
      t.string :name
      t.string :status
    end
  end
end
