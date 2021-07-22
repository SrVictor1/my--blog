defmodule Api.Blog.Users.Delete do
  alias Api.Repo
  alias Api.Blog.Users.GetOne

  def call(id) do
    GetOne.call(id)
    |> case do
      "invalide UUID!" ->
        {:error, "uuid4 invalide"}

      "Not found!" ->
        {:error, "user not found!"}

      params ->
        Repo.delete(params)
    end
  end
end
