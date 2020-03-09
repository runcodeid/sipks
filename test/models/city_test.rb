# == Schema Information
#
# Table name: cities
#
#  id                     :bigint           not null, primary key
#  address                :text(65535)
#  area                   :string(255)
#  city                   :string(255)
#  deleted_at             :datetime
#  email                  :string(255)
#  head_division          :string(255)
#  head_of_kesbangpol     :string(255)
#  logo_city_content_type :string(255)
#  logo_city_file_name    :string(255)
#  logo_city_file_size    :integer
#  logo_city_updated_at   :datetime
#  mayor                  :string(255)
#  population             :string(255)
#  slug                   :string(255)
#  sub_district           :string(255)
#  telp                   :string(255)
#  vice_mayor             :string(255)
#  village                :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
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
