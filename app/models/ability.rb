class Ability
  include CanCan::Ability

  def initialize(user)
    user.permissions.each do |permission|
      can permission.action.to_sym, permission.resource_type.constantize do
        permission.resource.nil? || permission.resource_id.nil? || permission.resource_id = ""
      end
    end
  end
end
