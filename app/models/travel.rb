# == Schema Information
#
# Table name: travels
#
#  id                :bigint(8)        not null, primary key
#  origin_place      :string
#  destination_place :string
#  url_origin        :string
#  url_destination   :string
#  check_in          :date
#  check_out         :date
#  is_verified       :boolean          default(FALSE)
#  status            :integer          default(0)
#  suitcase_capacity :float            default(0.0)
#  traveler_id       :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Travel < ApplicationRecord
  belongs_to :traveler
end
