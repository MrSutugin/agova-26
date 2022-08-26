module ApplicationHelper
  def current_class?(current_path)
    if request.path == current_path
      "card-nav-link active"
    else
      "card-nav-link"
    end
  end
end
