module PostsHelper
  def post_author_access(posts)
    result = ''
    posts.each do |p|
      result << "<tr> <td>#{p.content}</td>"
      result << "<td>#{p.user.username}</td> </tr>" if user_signed_in?
    end
    result.html_safe
  end
end
