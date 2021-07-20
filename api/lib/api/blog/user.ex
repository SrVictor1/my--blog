defmodule Api.Blog.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "blog_users" do
    field :email, :string
    field :name, :string
    field :password, :string
    field :posts_number, :integer

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :email, :posts_number, :password])
    |> validate_required([:name, :email, :posts_number, :password])
    |> unique_constraint(:email)
  end
end
