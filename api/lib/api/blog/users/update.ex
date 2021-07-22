defmodule Api.Blog.Users.Update do
  alias Api.Repo
  alias Ecto.Changeset
  alias Api.Blog.Users.GetOne

  def call(id, params) do
    GetOne.call(id)
    |>Changeset.change(params)
    |> case do
      data when data.valid? == true ->
        Repo.update(data)
      _ -> "Fali update"
    end
  end
end
