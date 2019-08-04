module PostsHelper
    def form_title
        @post.new_record? ? "Create a new post" : "Edit your post"
    end

    def form_submit
        @post.new_record? ? "Submit post" : "Update post"
    end      
end
