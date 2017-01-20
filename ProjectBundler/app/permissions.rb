class User
  attr_reader :personal_info, :contact_info, :role

  def initialize(personal_info, contact_info, role)
    @personal_info = personal_info
    @contact_info = contact_info
    @role = role
  end
end

class Role
  attr_reader :permissions

  def initialize(*permissions)
    @permissions = permissions
  end

  def add_permission(permission)
    @permission << permission
  end

  def permission_for?(key)
    @permissions.include? key
  end
end
