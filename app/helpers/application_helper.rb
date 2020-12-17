module ApplicationHelper
  def tag_menu_helper
    tags = Content.all
    menu = ''
    tags.each do |tag|
      menu << "<a href='#{tag_path(tag.id)}' class='dropdown-item'>#{tag.name}</a>"
    end

    menu.html_safe
  end
end

