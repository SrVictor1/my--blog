defmodule Api.Posts.GetAll do
  alias Api.{Repo, Post}
  def call() do
    Post
    |> Repo.all()
  end
end
