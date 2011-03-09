module ApplicationHelper
  def title(*parts)
    @title = (parts << "Ticketee").join(" - ") unless parts.empty?
    @title || "Ticketee"
  end

  def admins_only(&block)
    block.call if current_user && current_user.admin?
    nil
  end
end
