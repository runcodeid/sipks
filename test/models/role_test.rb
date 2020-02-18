# == Schema Information
#
# Table name: roles
#
#  id         :bigint           not null, primary key
#  deleted_at :datetime
#  name_role  :string(255)
#  slug       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_roles_on_deleted_at  (deleted_at)
#  index_roles_on_slug        (slug) UNIQUE
#

require 'test_helper'

class RoleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
