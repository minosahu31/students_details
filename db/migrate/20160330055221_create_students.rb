class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :roll_no
      t.string :student_class
      t.text :description

      t.timestamps null: false
    end
  end
end
