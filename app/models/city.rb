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

class City < ApplicationRecord
    has_many :action_plans
    has_many :users


    extend FriendlyId
    friendly_id :slug_candidates, use: :slugged

    Paperclip.interpolates :slug do |attachment, style|
        attachment.instance.slug
    end


    has_attached_file :logo_city, styles: {
            medium: "500x500>",
            thumb: "500x500>",
            hash_secret: "runcodeindonesia",
            url: "/system/:class/:attachment/:slug/:style/:hash.:extension",
            path: ":rails_root/public/system/:class/:attachment/:slug/:style/:hash.:extension"
        }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :logo_city, content_type: /\Aimage\/.*\z/

    validates :city, presence: {message: 'Nama Kabupaten/Kota Tidak Boleh Kosong'}

    acts_as_paranoid
end
