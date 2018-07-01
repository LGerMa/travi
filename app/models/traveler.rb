# == Schema Information
#
# Table name: travelers
#
#  id           :bigint(8)        not null, primary key
#  url_document :string
#  is_verified  :boolean          default(FALSE)
#  status       :integer          default(0)
#  user_id      :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Traveler < ApplicationRecord
  belongs_to :user
  has_many :travels
  has_many :reviews, :class_name => 'Review', :as => :reviewable
  has_many :owner_reviews, :class_name => 'Review', :as => :ownerable
end
