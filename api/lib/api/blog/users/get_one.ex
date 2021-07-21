defmodule Api.Blog.Users.GetOne do
  alias Api.Repo
  alias Api.Blog.User
  alias Ecto.UUID

  def call(id) do
    case UUID.cast(id) do
      {:ok, uuid} ->
        busca_user(uuid)
      :error ->
        "invalide UUID!"
    end
  end

  defp busca_user(uuid) do
    Repo.get(User, uuid)
    |> case do
      {:ok, data} ->
        data
      _ -> "Not found!"
    end
  end
end
