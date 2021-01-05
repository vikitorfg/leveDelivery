module ProductsHelper
    def bacon_mockup        
        "https://baconmockup.com/#{rand(20)+280}/#{rand(20)+180}/"
    end

    def content_helper(contents)
        content_list = ''
        contents.each_with_index do |content, index|
            content_list << "<a href='#{tag_path(content.id)}' class=''>#{content.name}</a>"
            if index != contents.size - 1
                content_list << ", "
            end
        end

        content_list.html_safe
    end

end
