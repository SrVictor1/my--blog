defmodule ApiWeb.Resolver.Posts.CreateResolver do
  def call(_parent, %{input: args}, _resolution) do
    Api.Blog.Posts.Create.call(args)
  end
end
