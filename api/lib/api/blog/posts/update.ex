defmodule Api.Blog.Posts.Update do
  alias Api.Repo
  alias Ecto.Changeset
  alias Api.Blog.Posts.GetOne

  def call(id, params) do
    Changeset.change(GetOne.call(id), params)
    |> handle()
  end

  defp handle(data) when data.valid? === true do
    Repo.update(data)
  end

  defp handle(data) when data.valid? === false do
    "error in"
  end
end
