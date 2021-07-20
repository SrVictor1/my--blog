defmodule Api.Blog.Posts.Create do
  alias Api.Repo

  def call(params) do
    params
    |> Repo.insert()
  end
end
