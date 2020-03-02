class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :description
      t.string :category
      t.integer :difficulty_level
      t.string :answer_key
      t.string :answer_a
      t.string :answer_b
      t.string :answer_c
      t.string :answer_d
      t.boolean :true_false

      t.timestamps
    end
  end
end
