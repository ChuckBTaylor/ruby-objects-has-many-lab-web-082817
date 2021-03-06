require 'pry'

class Author

  attr_accessor :name
  @@post_count = 0

  def initialize(name = nil)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(new_post)
    post = Post.new(new_post)
    post.author = self
    @posts << post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end


end
