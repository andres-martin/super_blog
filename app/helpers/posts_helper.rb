module PostsHelper
    def form_title
        @post.new_record? ? "Crea un nuevo post" : "Editar post"
    end

    def form_submit
        @post.new_record? ? "Crear post" : "Actualizar post"
    end      
end
