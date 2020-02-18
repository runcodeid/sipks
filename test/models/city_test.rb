# == Schema Information
#
# Table name: cities
#
#  id         :bigint           not null, primary key
#  city       :string(255)
#  deleted_at :datetime
#  slug       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_cities_on_deleted_at  (deleted_at)
#  index_cities_on_slug        (slug) UNIQUE
#

require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
