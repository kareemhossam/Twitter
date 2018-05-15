class User < ApplicationRecord

  has_many :tweeets
  enum gender: [:male, :female, :not_sure, :prefer_not_to_disclose]
  enum marital_status: [:single, :in_a_relationship, :engaged, :married]

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
