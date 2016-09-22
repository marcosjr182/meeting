class CreateSessionBlocks < ActiveRecord::Migration[5.0]
  def change
    create_table :session_blocks do |t|
      t.date :date
      t.integer :max_per_student
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
