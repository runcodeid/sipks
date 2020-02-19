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

class City < ApplicationRecord
    has_many :action_plans
    has_many :users


    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    validates :city, presence: true

    acts_as_paranoid
end
