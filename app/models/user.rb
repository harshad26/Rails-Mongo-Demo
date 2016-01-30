class User
  include Mongoid::Document
  include Mongoid::Paperclip
   
  has_mongoid_attached_file :avatar
  validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String
  field :address, type: String
  #key :first_name
 # references_many :posts

end
