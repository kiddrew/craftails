module ApplicationHelper
  def flash_class level
    "alert-box radius " + level.to_s
  end
end
