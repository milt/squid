require File.expand_path('../../test_helper', __FILE__)

class SkillCategoryTest < ActiveSupport::TestCase
  fixtures :skill_categories

  # Validations
  test "skill categories should have names" do
    skill_category = SkillCategory.new
    assert !skill_category.valid?, "saved skill category without name"
  end

  test "skill category names should be unique" do
    skill_category = SkillCategory.new(name: "Video")
    assert !skill_category.valid?, "saved skill category with non-unique name"
  end

end
