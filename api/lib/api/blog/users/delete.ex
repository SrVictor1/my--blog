defmodule Api.Blog.Users.Delete do
  alias Api.Repo
  alias Api.Blog.Users.GetOne

  def call(id) do
    GetOne.call(id)
    |> verific_id()
  end

  defp verific_id(params) do
    params
    |> handle()
  end

  defp handle(params) when params == "invalide UUID!", do: {:error, "INVALIDO UUID4!"}

  defp handle(params) when params == "Not found!", do: "not found!"

  defp handle(params) when is_bitstring(params) do
    case Repo.delete(params) do
      {:ok, params} ->
        params
      _ ->
        {:error, "DB NOT FOUND"}
    end
  end
end
