defmodule ApiWeb.Resolver.GetAllResolver do
  alias Api.Posts

  def call(_parent, _args, _resolution) do
    {:ok, Posts.GetAll.call()}
  end
end
