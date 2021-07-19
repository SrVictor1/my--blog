defmodule Api.Post do
  use Ecto.Schema
  import Ecto.Changeset

  @fields [:autor, :titulo, :img_url, :conteudo]

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "posts" do
    field :autor, :string
    field :titulo, :string
    field :img_url, :string
    field :conteudo, :string

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
