class CreateUserExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :user_exercises do |t|
      t.integer :user_id
      t.integer :exercise_id
      t.boolean :completed

      t.timestamps
    end
  end
end
