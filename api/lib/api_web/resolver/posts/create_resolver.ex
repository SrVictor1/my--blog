defmodule ApiWeb.Resolver.CreateResolver do
  def call(_parent, %{input: args}, _resolution) do
    Api.Posts.Create.call(args)
  end
end
