defmodule ApiWeb.Resolver.Posts.GetAllResolver do
  def call(_parent, _args, _resolution) do
    Api.Blog.Posts.GetAll.call()
  end
end
