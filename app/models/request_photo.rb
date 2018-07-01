# == Schema Information
#
# Table name: request_photos
#
#  id                :bigint(8)        not null, primary key
#  url_request_photo :string
#  request_id        :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class RequestPhoto < ApplicationRecord
  belongs_to :request
end
