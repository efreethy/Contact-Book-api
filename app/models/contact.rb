class Contact < ActiveRecord::Base
  validates :name, :email, :user_id, presence: true
  validates :email, uniqueness: { case_sensitive: false, scope: :user_id,
            message: "Email and user_id must be unique" }

  has_many :comments, :as => :commentable
  
  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :contact_shares, dependent: :destroy,
    class_name: "ContactShare",
    foreign_key: :contact_id,
    primary_key: :id
  )

  has_many(
    :shared_users,  dependent: :destroy,
    through: :contact_shares,
    source: :user
  )
end
