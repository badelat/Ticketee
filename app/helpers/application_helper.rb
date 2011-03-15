module ApplicationHelper
  def title(*parts)
    @title = (parts << "Ticketee").join(" - ") unless parts.empty?
    @title || "Ticketee"
  end

  def admins_only(&block)
    block.call if current_user && current_user.admin?
    nil
  end

  def authorized?(permission, resource, &block)
    block.call if can?(permission.to_sym, resource) || current_user.try(:admin?)
  end
end
