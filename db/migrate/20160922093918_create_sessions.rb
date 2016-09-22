class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.time :start
      t.time :end
      t.integer :max_students
      t.references :session_block, foreign_key: true

      t.timestamps
    end
  end
end
