defmodule ElixirApiRestaurant.UserTest do
  use ExUnit.Case, async: true

  alias ElixirApiRestaurant.User

  doctest(User)

  describe "build!/1" do
    test "should returns User struct" do
      result_build =
        User.build!(%{
          name: "Maria Belizário",
          email: "email@email.com",
          document: 81_403_849_099,
          password: "123456",
          phone: 65_999_999_999,
          address_street: "street",
          address_number: 15,
          address_city: "Várzea Grande",
          address_state: "Mato Grosso",
          zip_code: 78_000_000
        })

      %struct_name{} = result_build

      assert struct_name == User
      assert Map.get(result_build, :name) == "Maria Belizário"
      assert Map.get(result_build, :email) == "email@email.com"
      assert Map.get(result_build, :password) == "123456"
      assert Map.get(result_build, :document) == 81_403_849_099
      assert Map.get(result_build, :phone) == 65_999_999_999
    end
  end
end
