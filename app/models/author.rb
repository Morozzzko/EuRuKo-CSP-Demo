class Author
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :uid, :string
  attribute :nickname, :string
  attribute :image_url, :string
  attribute :profile_url, :string

  def id = uid

  def guest? = false
end
