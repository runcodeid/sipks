# == Schema Information
#
# Table name: b_fours
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
#  index_b_fours_on_action_plan_id  (action_plan_id)
#  index_b_fours_on_deleted_at      (deleted_at)
#  index_b_fours_on_slug            (slug) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (action_plan_id => action_plans.id)
#

class BFour < ApplicationRecord
  belongs_to :action_plan


  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  acts_as_paranoid

  before_validation { daftar_hadir.clear if @delete_daftar_hadir }
  before_validation { foto_atau_materi.clear if @delete_foto_atau_materi }
  before_validation { foto_kegiatan.clear if @delete_foto_kegiatan }
  before_validation { materi.clear if @delete_materi }
  before_validation { notulen.clear if @delete_notulen }
  before_validation { scan_document.clear if @delete_scan_document }
  before_validation { scan_document_ttd.clear if @delete_scan_document_ttd }

  has_attached_file :daftar_hadir
  has_attached_file :foto_atau_materi
  has_attached_file :foto_kegiatan
  has_attached_file :materi
  has_attached_file :notulen
  has_attached_file :scan_document
  has_attached_file :scan_document_ttd
  
  validates_attachment :daftar_hadir, :content_type => { :content_type => %w(application/pdf) }
  validates_attachment :foto_atau_materi, :content_type => { :content_type => %w(application/pdf) }
  validates_attachment :foto_kegiatan, :content_type => { :content_type => %w(application/pdf) }
  validates_attachment :materi, :content_type => { :content_type => %w(application/pdf) }
  validates_attachment :notulen, :content_type => { :content_type => %w(application/pdf) }
  validates_attachment :scan_document, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }
  validates_attachment :scan_document_ttd, :content_type => { :content_type => %w(application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document) }

  validates_with AttachmentSizeValidator, attributes: :daftar_hadir, less_than: 5000.kilobytes
  validates_with AttachmentSizeValidator, attributes: :foto_atau_materi, less_than: 5000.kilobytes
  validates_with AttachmentSizeValidator, attributes: :foto_kegiatan, less_than: 5000.kilobytes
  validates_with AttachmentSizeValidator, attributes: :materi, less_than: 5000.kilobytes
  validates_with AttachmentSizeValidator, attributes: :notulen, less_than: 5000.kilobytes
  validates_with AttachmentSizeValidator, attributes: :scan_document, less_than: 5000.kilobytes
  validates_with AttachmentSizeValidator, attributes: :scan_document_ttd, less_than: 5000.kilobytes

  def delete_daftar_hadir
    @delete_daftar_hadir ||= false
  end

  def delete_daftar_hadir=(value)
    @delete_daftar_hadir  = !value.to_i.zero?
  end

  def delete_foto_atau_materi
    @delete_foto_atau_materi ||= false
  end

  def delete_foto_atau_materi=(value)
    @delete_foto_atau_materi  = !value.to_i.zero?
  end

  def delete_foto_kegiatan
    @delete_foto_kegiatan ||= false
  end

  def delete_foto_kegiatan=(value)
    @delete_foto_kegiatan  = !value.to_i.zero?
  end

  def delete_materi
    @delete_materi ||= false
  end

  def delete_materi=(value)
    @delete_materi  = !value.to_i.zero?
  end

  def delete_notulen
    @delete_notulen ||= false
  end

  def delete_notulen=(value)
    @delete_notulen  = !value.to_i.zero?
  end
  
  def delete_scan_document
    @delete_scan_document ||= false
  end

  def delete_scan_document=(value)
    @delete_scan_document  = !value.to_i.zero?
  end
  def delete_scan_document_ttd
    @delete_scan_document_ttd ||= false
  end

  def delete_scan_document_ttd=(value)
    @delete_scan_document_ttd  = !value.to_i.zero?
  end
end
