defmodule ElixirApiRestaurant.User do
  @moduledoc """
  Módulo de usuário (cliente do restaurante)
  """

  @enforce_keys [:name, :email, :password, :document, :phone]

  defstruct [
    :name,
    :email,
    :password,
    :document,
    :phone,
    :address_street,
    :address_number,
    :address_city,
    :address_state,
    :zip_code
  ]

  @doc ~S"""
  Gera a estrutura de um usuário

  ## Parameters

  - Mapa Contendo: name, email, password, phone, street, number, city, state e zipcode.

  ## Examples

  ```elixir
  iex> User.build!(%{name: "Maria Belizário", email: "email@email.com", document: 81_403_849_099, password: "123456", phone: 65_999_999_999, address_street: "street", address_number: 15, address_city: "Várzea Grande", address_state: "Mato Grosso", zip_code: 78_000_000})
  %ElixirApiRestaurant.User{
    name: "Maria Belizário",
    email: "email@email.com",
    document: 81_403_849_099,
    password: "123456",
    phone: 65999999999,
    address_city: "Várzea Grande",
    address_number: 15,
    address_state: "Mato Grosso",
    address_street: "street",
    zip_code: 78000000
  }
  ```

  """
  def build!(%{} = new_user) do
    struct(__MODULE__, new_user)
  end

  @doc ~S"""
  Atualiza o valor dos campos da estrutura de usuário

  ## Parameters

  - Estrutura do usuário %ElixirApiRestaurant.User{}
  - Mapa dos campos que deseja atualizar

  ## Examples

  ```elixir
  iex> User.update!(%ElixirApiRestaurant.User{name: "Maria Belizário", email: "email@email.com", document: 81_403_849_099, password: "123456", phone: 65_999_999_999, address_street: "street", address_number: 15, address_city: "Várzea Grande", address_state: "Mato Grosso", zip_code: 78_000_000}, %{name: "Camila Maria", password: "Strong", address_number: 50})
  %ElixirApiRestaurant.User{
    name: "Camila Maria",
    email: "email@email.com",
    document: 81_403_849_099,
    password: "Strong",
    phone: 65999999999,
    address_city: "Várzea Grande",
    address_number: 50,
    address_state: "Mato Grosso",
    address_street: "street",
    zip_code: 78000000
  }
  ```

  """
  def update!(%__MODULE__{} = base_user, %{} = new_data_fields) do
    struct(base_user, new_data_fields)
  end
end
