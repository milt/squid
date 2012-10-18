class CreateSkillLevels < ActiveRecord::Migration
  def change
    create_table :skill_levels do |t|
      t.integer :user_id
      t.integer :skill_id
    end
  end
end
