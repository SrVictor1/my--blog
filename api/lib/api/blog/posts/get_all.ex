defmodule Api.Blog.Posts.GetAll do
  alias Api.Repo
  alias Api.Blog.Post

  def call() do
    Post
    |> Repo.all()
  end
end
