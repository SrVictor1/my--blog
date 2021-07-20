defmodule Api.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:autor, :titulo, :img_url, :conteudo]

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary

  schema "posts" do
    field :title, :string
    field :img_url, :string
    field :body, :string
    field :published, :boolean
    belongs_to :user, Api.Blog.User

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> validate_length(:autor, min: 2, max: 15)
    |> validate_length(:titulo, min: 2, max: 50)
    |> unique_constraint([:titulo])
  end
end
