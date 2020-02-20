# == Schema Information
#
# Table name: action_plans
#
#  id                :bigint           not null, primary key
#  action_plan       :string(255)
#  code_action_plans :string(255)
#  deleted_at        :datetime
#  slug              :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  city_id           :bigint
#  year_id           :bigint
#
# Indexes
#
#  index_action_plans_on_city_id     (city_id)
#  index_action_plans_on_deleted_at  (deleted_at)
#  index_action_plans_on_slug        (slug) UNIQUE
#  index_action_plans_on_year_id     (year_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#  fk_rails_...  (year_id => years.id)
#

class ActionPlan < ApplicationRecord
  belongs_to :city
  belongs_to :year

  has_many :b_four
  has_many :b_eight
  has_many :b_twelve

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged


  acts_as_paranoid

  # has_attached_file :daftar_hadir,:foto_atau_materi,:foto_kegiatan,:materi,:notulen, :scan_document,:scan_document_ttd
  # validates_attachment :daftar_hadir, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  # validates_attachment :foto_atau_materi, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  # validates_attachment :foto_kegiatan, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  # validates_attachment :materi, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  # validates_attachment :notulen, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  # validates_attachment :scan_document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  # validates_attachment :scan_document_ttd, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

  # validates_with AttachmentSizeValidator, attributes: :daftar_hadir, less_than: 500.kilobytes
  # validates_with AttachmentSizeValidator, attributes: :foto_atau_materi, less_than: 500.kilobytes
  # validates_with AttachmentSizeValidator, attributes: :foto_kegiatan, less_than: 500.kilobytes
  # validates_with AttachmentSizeValidator, attributes: :materi, less_than: 500.kilobytes
  # validates_with AttachmentSizeValidator, attributes: :notulen, less_than: 500.kilobytes
  # validates_with AttachmentSizeValidator, attributes: :scan_document, less_than: 500.kilobytes
  # validates_with AttachmentSizeValidator, attributes: :scan_document_ttd, less_than: 500.kilobytes
end
