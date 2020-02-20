# == Schema Information
#
# Table name: permissions
#
#  id          :bigint           not null, primary key
#  action      :string(255)
#  deleted_at  :datetime
#  description :text(65535)
#  name        :string(255)
#  page        :boolean
#  path        :text(65535)
#  resource    :string(255)
#  slug        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_permissions_on_deleted_at  (deleted_at)
#  index_permissions_on_slug        (slug) UNIQUE
#

class Permission < ApplicationRecord


  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged


  acts_as_paranoid


  #relasi antar table
  has_many :role_permissions
  #relasi untuk akses table ke permission tanpa harus menggunakan access_roles
  has_many :roles, through: :role_permissions
  #========================
end
