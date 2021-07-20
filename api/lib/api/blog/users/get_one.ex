defmodule Api.Blog.Users.GetOne do
  alias Api.Repo
  alias Api.Blog.Users
  alias Ecto.UUID

  def call(id) do
    case UUID.cast(id) do
      {:ok, uuid} ->
        case Repo.get(Users, uuid) do
          nil -> "Not found!"
          date -> date
        end

      :error ->
        "invalide UUID!"

      _ ->
        "deu um error muito louco no get one Users'-'"
    end
  end
end
