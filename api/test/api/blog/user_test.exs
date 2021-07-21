defmodule Api.Blog.UserTest do
  use Api.DataCase, async: true

  @valid_params %{
    name: "Victor",
    email: "victor@test.com",
    password: "123456789",
    posts_number: 1
  }

  @invalid_params %{
    name: nil,
    email: nil,
    password: nil,
    posts_number: nil
  }

  @update_params %{
    name: "Victor2",
    email: "victor@test2.com",
    password: "v2123456789",
    posts_number: 2
  }

  defp create_user_params(params) do
    Api.Blog.Users.Create.call(params)
  end

  test "create_user/1 with valid data create a user" do
    {:ok, %Api.Blog.User{} = user} = create_user_params(@valid_params)
    assert user.name == "Victor"
    assert user.email == "victor@test.com"
    assert user.password == "123456789"
    assert user.posts_number == 1
  end

  test "create_user/1 with invalid data create a user" do
    assert {:error, %Ecto.Changeset{}} = create_user_params(@invalid_params)
  end

  test "delete_user/1 passando um id valido para o delete user" do
    {:ok, %Api.Blog.User{} = user} = create_user_params(@valid_params)
    assert %Api.Blog.User{} = Api.Blog.Users.Delete.call(user.id)
  end

  test "delete_user/1 passando um id invalid para o delete user" do
    assert {:error, "INVALIDO UUID4!"} = Api.Blog.Users.Delete.call("123124125125125213")
  end
end
