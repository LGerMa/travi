# == Schema Information
#
# Table name: reviews
#
#  id              :bigint(8)        not null, primary key
#  review          :text
#  stars           :integer          default(0)
#  reviewable_type :string
#  reviewable_id   :bigint(8)
#  ownerable_type  :string
#  ownerable_id    :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Review < ApplicationRecord
  belongs_to :reviewable, :polymorphic => true
  belongs_to :ownerable, :polymorphic => true 
end
