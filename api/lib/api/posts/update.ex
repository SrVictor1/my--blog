defmodule Api.Posts.Update do
  alias Api.Repo
  alias Ecto.Changeset
  alias Api.Posts.GetOne

  def call(id, params \\ %{}) do
    changeset = Changeset.change(GetOne.call(id), params)

    case Api.Post.changeset(params) do
      user when user.valid? === true ->
        Repo.update(changeset)

      user ->
        user
    end
  end
end
