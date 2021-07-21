defmodule Api.Blog.Posts.Create do
  def call(params) do
    params
    |> Api.Blog.Post.changeset()
    |> Api.Repo.insert()
  end
end
