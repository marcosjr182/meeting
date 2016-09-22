class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :dob
      t.string :token
      t.string :student_class

      t.timestamps
    end
  end
end
