# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    has_many :posts
    has_secure_password validations: false

    validates :name, presence: true
    validates :email, uniqueness: true, format: /@/
    validates :password, presence: true, on: :create
    validates :password, length: {minimum:6, maximum:20}, allow_nil: true
end
