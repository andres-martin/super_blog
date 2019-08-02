class User < ApplicationRecord
    # has_many :posts
    has_secure_password validations: false
end
