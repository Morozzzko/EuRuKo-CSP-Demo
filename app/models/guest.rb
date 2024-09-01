class Guest
  include ActiveModel::Model
  include ActiveModel::Attributes

  def id = "RandomGuest"

  def guest? = true
end
