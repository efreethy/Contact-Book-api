class User < ActiveRecord::Base
  validates :username, uniqueness: true, presence: true

  has_many :comments, :as => :commentable
  
  has_many(
    :contact_shares, dependent: :destroy,
    class_name: "ContactShare",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :contacts, dependent: :destroy,
    through: :contact_shares,
    source: :contact
  )
  has_one(
    :contact, dependent: :destroy,
    class_name: "Contact",
    foreign_key: :user_id,
    primary_key: :id
  )



end
