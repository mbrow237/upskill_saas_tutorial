class Contact < ActiveRecord::Base
    #name
    #email
    #comments
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
end    