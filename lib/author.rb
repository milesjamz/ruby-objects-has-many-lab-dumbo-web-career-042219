class Author

attr_accessor :name

@@posts = []

	def initialize(name)
		@name = name
		@@posts << self
	end


	def self.posts
		@@posts
	end

	def self.post_count
		Post.all.count
	end

	def add_post(post)
		post.author = self
	end

	def posts
		Post.all.select do |post|
		post.author == self
	end
end

	def add_post_by_title(title)
			post = Post.new(title)
			post.author = self
	end

end