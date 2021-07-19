defmodule Api.Posts.Create do
  alias Api.{Repo, Post}

  def call(params) do
    params
    |> Post.changeset()
    |> Repo.insert()
  end
end
