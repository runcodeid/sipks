# == Schema Information
#
# Table name: b_eights
#
#  id                             :bigint           not null, primary key
#  daftar_hadir_content_type      :string(255)
#  daftar_hadir_file_name         :string(255)
#  daftar_hadir_file_size         :integer
#  daftar_hadir_updated_at        :datetime
#  deleted_at                     :datetime
#  foto_atau_materi_content_type  :string(255)
#  foto_atau_materi_file_name     :string(255)
#  foto_atau_materi_file_size     :integer
#  foto_atau_materi_updated_at    :datetime
#  foto_kegiatan_content_type     :string(255)
#  foto_kegiatan_file_name        :string(255)
#  foto_kegiatan_file_size        :integer
#  foto_kegiatan_updated_at       :datetime
#  materi_content_type            :string(255)
#  materi_file_name               :string(255)
#  materi_file_size               :integer
#  materi_updated_at              :datetime
#  notulen_content_type           :string(255)
#  notulen_file_name              :string(255)
#  notulen_file_size              :integer
#  notulen_updated_at             :datetime
#  scan_document_content_type     :string(255)
#  scan_document_file_name        :string(255)
#  scan_document_file_size        :integer
#  scan_document_ttd_content_type :string(255)
#  scan_document_ttd_file_name    :string(255)
#  scan_document_ttd_file_size    :integer
#  scan_document_ttd_updated_at   :datetime
#  scan_document_updated_at       :datetime
#  slug                           :string(255)
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  action_plan_id                 :bigint
#
# Indexes
#
#  index_b_eights_on_action_plan_id  (action_plan_id)
#  index_b_eights_on_deleted_at      (deleted_at)
#  index_b_eights_on_slug            (slug) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (action_plan_id => action_plans.id)
#

class BEight < ApplicationRecord
  belongs_to :action_plan


  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  acts_as_paranoid


  has_attached_file :daftar_hadir,:foto_atau_materi,:foto_kegiatan,:materi,:notulen, :scan_document,:scan_document_ttd
  validates_attachment :daftar_hadir, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  validates_attachment :foto_atau_materi, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  validates_attachment :foto_kegiatan, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  validates_attachment :materi, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  validates_attachment :notulen, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  validates_attachment :scan_document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  validates_attachment :scan_document_ttd, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
end
