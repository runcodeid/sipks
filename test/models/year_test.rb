# == Schema Information
#
# Table name: years
#
#  id         :bigint           not null, primary key
#  deleted_at :datetime
#  slug       :string(255)
#  year       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_years_on_deleted_at  (deleted_at)
#  index_years_on_slug        (slug) UNIQUE
#

require 'test_helper'

class YearTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
