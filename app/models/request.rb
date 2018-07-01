# == Schema Information
#
# Table name: requests
#
#  id                :bigint(8)        not null, primary key
#  type              :integer          default(0)
#  name_article      :string
#  price_article     :string
#  url_article       :string
#  weight_article    :float            default(0.0)
#  date_required     :date
#  amount            :integer          default(0)
#  note              :text
#  origin_place      :string
#  destination_place :string
#  is_public         :boolean          default(TRUE)
#  is_suggested_fare :boolean          default(FALSE)
#  status            :integer          default(0)
#  payment_method    :integer          default(0)
#  category_id       :bigint(8)
#  user_id           :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Request < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :request_photos
end
