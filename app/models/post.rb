class Post
  include Mongoid::Document
  

  field :title, type: String
  field :content, type: String
  field :publish, type: Mongoid::Boolean
  #field :user_id
  #embedded_in :user, :inverse_of => :posts
  embeds_many :comments
  #referenced_in :user
end
