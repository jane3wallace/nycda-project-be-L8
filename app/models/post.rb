class Post < ActiveRecord::Base

  def self.all_post_titles
    posts = Post.all

    display_titles = []
    posts.each do |p|
      display_titles << "#{p.title}"
    end
  end

end
