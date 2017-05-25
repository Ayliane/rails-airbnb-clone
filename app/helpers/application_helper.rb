module ApplicationHelper

  def yesno(x)
    x ? "Yes" : "No"
  end

  def confirmation_status(x)
    x ? "Confirmed" : "Pending"
  end
end
