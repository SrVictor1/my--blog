defmodule Api.Posts.GetOne do
  alias Api.{Repo, Post}
  alias Ecto.UUID

  def call(id) do
    case UUID.cast(id) do
      {:ok, uuid} ->
        case Repo.get(Post, uuid) do
          nil -> "user not found!"
          user -> user
        end

      :error ->
        "invalide UUID!"

      _ ->
        "deu um error muito louco no get one post '-'"
    end
  end
end
