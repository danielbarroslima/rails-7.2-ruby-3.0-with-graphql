class User < ApplicationRecord
	has_many :user_permissions
  has_many :permissions, through: :user_permissions

  def has_permission?(permission_name)
    permissions.exists?(name: permission_name)
  end
end
