defmodule ApiWeb.Schema.Types.Posts do
  use Absinthe.Schema.Notation

  object :posts do
    field :autor, :string
    field :titulo, :string
    field :img_url, :string
    field :conteudo, :string
    field :id, :uuid4
  end

  input_object :create_post do
    field :autor, non_null(:string)
    field :titulo, non_null(:string)
    field :img_url, non_null(:string)
    field :conteudo, non_null(:string)
  end
end
