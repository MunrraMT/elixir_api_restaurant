defmodule ElixirApiRestaurant.User do
  @moduledoc """
  Módulo de usuário (cliente do restaurante)
  """

  defstruct [:name, :email, :document, :password, :phone, address: %{}]

  @doc ~S"""
  Gera a estrutura de um usuário com UUID

  ## Parameters

  - Mapa Contendo: name, email, password, phone, street, number, city, state e zipcode.

  ## Examples

  ```elixir
  iex> User.build!(%{name: "Maria Belizário", email: "email@email.com", document: 00000000000, password: "123456", phone: 65_999_999_999, street: "street", number: 15, city: "Várzea Grande", state: "Mato Grosso", zip_code: 78_000_000})
  %ElixirApiRestaurant.User{
    name: "Maria Belizário",
    email: "email@email.com",
    document: 00000000000,
    password: "123456",
    phone: 65999999999,
    address: %{
      city: "Várzea Grande",
      number: 15,
      state: "Mato Grosso",
      street: "street",
      zip_code: 78000000
    }
  }
  ```

  """
  def build!(%{
        name: name,
        email: email,
        document: document,
        password: password,
        phone: phone,
        street: street,
        number: number,
        city: city,
        state: state,
        zip_code: zip_code
      }) do
    %__MODULE__{
      name: name,
      email: email,
      document: document,
      password: password,
      phone: phone,
      address: %{street: street, number: number, city: city, state: state, zip_code: zip_code}
    }
  end
end
