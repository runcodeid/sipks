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

class Role < ApplicationRecord

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  acts_as_paranoid


  #relasi antar table
  has_many :users
  has_many :role_permissions
  #relasi untuk akses table ke permission tanpa harus menggunakan access_roles
  has_many :permissions, through: :role_permissions
  #========================
end
