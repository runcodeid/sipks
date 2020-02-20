# == Schema Information
#
# Table name: role_permissions
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  permission_id :bigint
#  role_id       :bigint
#
# Indexes
#
#  index_role_permissions_on_permission_id  (permission_id)
#  index_role_permissions_on_role_id        (role_id)
#
# Foreign Keys
#
#  fk_rails_...  (permission_id => permissions.id)
#  fk_rails_...  (role_id => roles.id)
#

class RolePermission < ApplicationRecord
  belongs_to :permission
  belongs_to :role

  #untuk melakukan apakah access role memiliki data
  def self.check_status(role,permission)
      self.where('role_id = ?',role).where('permission_id = ?',permission).first
  end
  #=============

  #menghapus data access role data bahari berdasarkan role_id
  def self.destroy_oldrole(role)
      self.where('role_id = ?',role).destroy_all
  end
  #==============
end
