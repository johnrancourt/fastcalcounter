class User < ActiveRecord::Base
    has_many :logs, dependent: :destroy
    has_many :weights, dependent: :destroy
    validates_presence_of :user_name
    validates_presence_of :email
    validates_presence_of :password
end
