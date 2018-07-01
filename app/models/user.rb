# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  firstname              :string
#  lastname               :string
#  username               :string
#  avatar                 :string
#  account_id             :string
#  provider               :string
#  telephone_number       :string
#  one_signal_token       :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :tokens, class_name: 'Doorkeeper::AccessToken', foreign_key: :resource_owner_id

  has_one :token, -> { order 'created_at DESC' }, class_name: 'Doorkeeper::AccessToken', foreign_key: :resource_owner_id

  has_one :traveler
  has_many :requests
  has_many :reviews, :class_name => 'Review', :as => :reviewable
  has_many :owner_reviews, :class_name => 'Review', :as => :ownerable
end
