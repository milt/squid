require File.expand_path('../../test_helper', __FILE__)

class SkillTest < ActiveSupport::TestCase

  # Replace this with your real tests.
  test "skills should have names" do
    skill = Skill.new(skill_category_id: 1)
    assert !skill.save
  end

  test "skills should have categories" do
    skill = Skill.new(name: "3d")
    assert !skill.save
  end

  test "skill names should be unique" do
    skill = Skill.new(name: "Video", skill_category_id: 2)
    assert !skill.save
  end
end
