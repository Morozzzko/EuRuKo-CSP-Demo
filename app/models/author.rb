class Author
  include ActiveModel::Model
  include ActiveModel::Attributes

  HOODIES = %w[morozzzko].freeze

  attribute :uid, :string
  attribute :nickname, :string
  attribute :image_url, :string
  attribute :profile_url, :string

  def id = uid

  def guest? = false

  def at_name = "@#{nickname}"

  def hoodie?
    HOODIES.include?(nicknmae)
  end
end
