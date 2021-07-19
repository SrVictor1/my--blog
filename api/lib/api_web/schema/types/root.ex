defmodule ApiWeb.Schema.Types.Root do
  use Absinthe.Schema.Notation

  alias ApiWeb.Resolver.{GetAllResolver, CreateResolver}

  import_types ApiWeb.Schema.Types.Posts
  import_types ApiWeb.Schema.Types.Custom.UUID4

  object(:root_query) do
    field :get_all_posts, list_of(:posts) do
      resolve &GetAllResolver.call/3
    end
  end

  object(:root_mutation) do
    field :create_post, type: :posts do
      arg :input, :create_post
      resolve &CreateResolver.call/3
    end
  end
end
