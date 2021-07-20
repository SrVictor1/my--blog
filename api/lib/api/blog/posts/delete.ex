defmodule Api.Blog.Posts.Delete do
  alias Api.Repo
  alias Api.Blog.Posts.GetOne

  def call(id) do
    case Repo.delete(GetOne.call(id)) do
      {:ok, params} -> params
      {:error, params} -> params
      _ -> "undefinide error in post delete '-'"
    end
  end
end
