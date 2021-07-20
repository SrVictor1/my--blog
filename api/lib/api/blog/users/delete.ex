defmodule Api.Blog.Users.Delete do
  alias Api.Repo
  alias Api.Blog.Posts.GetOne

  def call(id) do
    case Repo.delete(GetOne.call(id)) do
      {:ok, params} -> params
      {:error, params} -> params
      _ -> "undefinide error in Users delete '-'"
    end
  end
end
