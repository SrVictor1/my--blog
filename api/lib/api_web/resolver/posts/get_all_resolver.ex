defmodule ApiWeb.Resolver.GetAllResolver do
  def call(_parent, _args, _resolution) do
    {:ok, Api.Blog.Posts.GetAll.call()}
  end
end
