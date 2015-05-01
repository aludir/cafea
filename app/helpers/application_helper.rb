module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    tag = params[:tag]
    link_to title, {sort: column, direction: direction, tag: tag}, {class: css_class}
  end
  
  def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :warning then "alert alert-warning"
        when :alert then "alert alert-danger"
        else "alert alert-info"
    end
  end
  
  def correct_user?(user)
    user == current_user.id
  end
end
