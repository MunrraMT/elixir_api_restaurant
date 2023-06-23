defmodule ElixirApiRestaurant.RepositoryTest do
  @db_folder "./persist/maria-belizario"

  use ExUnit.Case, async: true

  alias ElixirApiRestaurant.{Repository, Client}

  doctest(Repository)

  describe "save!/1" do
    test "should create file for save client data" do
      client =
        Client.build!(%{
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

      Repository.save!(client)

      try do
        assert File.exists?(@db_folder)
        assert File.read!(@db_folder) |> :erlang.binary_to_term() == client
      after
        File.rm!(@db_folder)
      end
    end
  end

  describe "delete!/1" do
    test "should delete file client data" do
      client =
        Client.build!(%{
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

      Repository.save!(client)
      Repository.delete!(client)

      assert File.exists?(@db_folder) === false
    end
  end
end
