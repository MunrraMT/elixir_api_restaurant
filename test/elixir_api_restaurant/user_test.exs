defmodule ElixirApiRestaurant.UserTest do
  use ExUnit.Case, async: true

  alias ElixirApiRestaurant.User

  doctest(User)

  describe "build!/1" do
    test "should returns User struct with name, address and phone" do
      result_build =
        User.build!(%{
          name: "Maria Belizário",
          email: "email@email.com",
          document: 00_000_000_000,
          password: "123456",
          phone: 65_999_999_999,
          street: "street",
          number: 15,
          city: "Várzea Grande",
          state: "Mato Grosso",
          zip_code: 78_000_000
        })

      %struct_name{} = result_build

      assert struct_name == User
      assert result_build.name == "Maria Belizário"
      assert result_build.email == "email@email.com"
      assert result_build.phone == 65_999_999_999
    end
  end
end
