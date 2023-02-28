class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :skill_1, null: false, default: ''
      t.string :skill_2, default: ''
      t.string :skill_3, default: ''
      t.string :skill_4, default: ''
      t.string :skill_5, default: ''
      t.string :skill_6, default: ''
      t.string :skill_7, default: ''
      t.string :skill_8, default: ''
      t.string :skill_9, default: ''
      t.string :skill_10, default: ''
    end
  end
end
