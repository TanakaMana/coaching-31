class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.integer     :question_num
      t.string      :question_content
      t.timestamps
    end
  end
end
