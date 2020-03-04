class ChangeDefaultOfTrueFalseOnQuestions < ActiveRecord::Migration[6.0]
  def change
    change_column :questions, :true_false, :boolean, default: false
  end
end
