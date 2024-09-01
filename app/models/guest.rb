class Guest
  include ActiveModel::Model
  include ActiveModel::Attributes

  def uid = "RandomGuest"

  def guest? = true
end
