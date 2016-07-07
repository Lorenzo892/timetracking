require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "#clean_old removes projects older than one week"
  old_project=Project.create(name:"test",
                              description: "test one week")
  old_project.created_at = 2.years.ago
  old_project.save
  new_project  = Project.create(name:"fresh Project",
                              description: "this is the fresh project")
  Project.clean_old

  assert_equal 3, Project.all.count
end
