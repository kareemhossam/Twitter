class User < ApplicationRecord

  has_many :tweeets
  enum gender: [:male, :female, :not_sure, :prefer_not_to_disclose]
  enum marital_status: [:single, :in_a_relationship, :engaged, :married]

  acts_as_follower
  acts_as_followable
  acts_as_liker
  acts_as_likeable
  acts_as_mentionable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
