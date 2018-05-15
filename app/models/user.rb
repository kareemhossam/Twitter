class User < ApplicationRecord

  enum gender: [:male, :female, :not_sure, :prefer_not_to_disclose]
  enum marital_status: [:single, :in_a_relationship, :engaged, :married]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
