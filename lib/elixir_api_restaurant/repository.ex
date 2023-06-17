defmodule ElixirApiRestaurant.Repository do
  @moduledoc """
  Módulo de repositório
  """

  @db_folder "./persist"

  alias ElixirApiRestaurant.Client

  @doc ~S"""
  Salva o cliente em um arquivo em formato de erlang binário

  ## Parameters

  - Struct de cliente

  ## Examples

  ```elixir
  iex> Repository.save_client!(%ElixirApiRestaurant.Client{name: "Maria Belizário", email: "email@email.com", document: 81_403_849_099, password: "123456", phone: 65_999_999_999, address_street: "street", address_number: 15, address_city: "Várzea Grande", address_state: "Mato Grosso", zip_code: 78_000_000})
  ```

  """
  def save_client!(%Client{} = client) do
    @db_folder |> File.mkdir_p!()

    "#{@db_folder}/#{get_filename(client)}"
    |> File.write!(:erlang.term_to_binary(client))
  end

  @doc ~S"""
  Deleta arquivo de cadastro de cliente

  ## Parameters

  - Struct de cliente

  ## Examples

  ```elixir
  iex(1)> Repository.save_client!(%ElixirApiRestaurant.Client{name: "Maria Belizário", email: "email@email.com", document: 81_403_849_099, password: "123456", phone: 65_999_999_999, address_street: "street", address_number: 15, address_city: "Várzea Grande", address_state: "Mato Grosso", zip_code: 78_000_000})
  iex(2)> Repository.delete_client!(%ElixirApiRestaurant.Client{name: "Maria Belizário", email: "email@email.com", document: 81_403_849_099, password: "123456", phone: 65_999_999_999, address_street: "street", address_number: 15, address_city: "Várzea Grande", address_state: "Mato Grosso", zip_code: 78_000_000})
  ```

  """
  def delete_client!(%Client{} = client) do
    case @db_folder |> File.exists?() do
      true ->
        "#{@db_folder}/#{get_filename(client)}" |> File.rm!()
    end
  end

  defp get_filename(client) do
    client
    |> Map.get(:name)
    |> Slug.slugify()
  end
end
