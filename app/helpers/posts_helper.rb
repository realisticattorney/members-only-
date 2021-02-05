module PostsHelper

  def post_author_access(posts)
    result = "#{}"
    posts.each do |p|
      result << "<tr> <td>#{p.content}</td>"
      if user_signed_in?
        result << "<td>#{p.user.username}</td> </tr>"
      end
    end
    result.html_safe
  end
end