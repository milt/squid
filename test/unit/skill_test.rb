require File.expand_path('../../test_helper', __FILE__)

class SkillTest < ActiveSupport::TestCase
  fixtures :skills, :skill_categories

  # Validations
  test "skills should have names" do
    skill = Skill.new(skill_category_id: 1)
    assert !skill.valid?, "saved skill without name"
  end

  test "skills should have non nil categories" do
    skill = Skill.new(name: "3d")
    assert !skill.valid?, "saved skill with nil category"
  end

  test "skill names should be unique" do
    skill = Skill.new(name: "Video", skill_category_id: 2)
    assert !skill.valid?, "saved skill with non-unique name"
  end
end
