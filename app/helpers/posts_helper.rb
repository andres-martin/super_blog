module PostsHelper
    def form_title
        @post.new_record? ? "Publish new Post" : "Edit Post"
    end
    
end
