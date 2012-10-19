require File.expand_path('../../test_helper', __FILE__)

class SkillLevelTest < ActiveSupport::TestCase
  fixtures :users, :skills

  # Replace this with your real tests.
  test "skill levels need a user" do
    level = SkillLevel.new(skill_id: 1)
    assert !level.valid?, "skill level saved without user"
  end

  test "skill levels need a skill" do
    level = SkillLevel.new(user_id: 1)
    assert !level.valid?, "skill level saved without skill"
  end

  test "skill levels need a rating" do
    level = SkillLevel.new(user_id: 1, skill_id: 1)
    assert !level.valid?, "skill level saved without rating"
  end

  test "skill levels need a rating between 1-3" do
    level = SkillLevel.new(user_id: 1, skill_id: 1, rating: 4)
    assert !level.valid?, "skill level saved with out-of-bounds rating"
  end

  test "skill levels need a numerical rating" do
    level = SkillLevel.new(user_id: 1, skill_id: 1, rating: "foo")
    assert !level.valid?, "skill level saved with non-integer rating"
  end
end
