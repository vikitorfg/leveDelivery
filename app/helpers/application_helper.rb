module ApplicationHelper
  def tag_menu_helper(is_li, a_class)
    tags = Content.all
    menu = ''
    tags.each do |tag|
      menu << "<li class='nav-item-dropdown customDropdownMenu'>" if is_li
      menu << "<a href='#{tag_path(tag.id)}' class='#{a_class}'>#{tag.name}</a>"
      menu << "</li>" if is_li
    end

    menu.html_safe
  end
end

