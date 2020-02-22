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

class Year < ApplicationRecord
    has_many :action_plans
    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    attribute :city_param_url, :integer

    validates :year, presence: true
    
    acts_as_paranoid

end
