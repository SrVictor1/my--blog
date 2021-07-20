defmodule Api.Blog.Posts.GetOne do
  alias Api.Repo
  alias Api.Blog.Post
  alias Ecto.UUID

  def call(id) do
    case UUID.cast(id) do
      {:ok, uuid} ->
        case Repo.get(Post, uuid) do
          nil -> "Not found!"
          date -> date
        end

      :error ->
        "invalide UUID!"

      _ ->
        "deu um error muito louco no get one post '-'"
    end
  end
end
