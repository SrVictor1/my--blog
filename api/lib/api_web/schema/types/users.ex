defmodule ApiWeb.Schema.Users do
  use Absinthe.Schema.Notation

  object :users do
    field :name, :string
    field :email, :string
    field :id, :uuid4
  end

  input_object :create_user do
    field :name, non_null(:string)
    field :email, non_null(:string)
    field :password, non_null(:string)
  end
end
