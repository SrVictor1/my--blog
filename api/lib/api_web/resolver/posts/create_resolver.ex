defmodule ApiWeb.Resolver.CreateResolver do
  def call(_parent, %{input: args}, _resolution) do
    Api.Blog.Post.changeset(args)
    |> Api.Blog.Posts.Create.call()
  end
end
