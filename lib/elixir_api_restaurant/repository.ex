defmodule ElixirApiRestaurant.Repository do
  @moduledoc """
  Módulo de repositório
  """

  @db_folder "./persist"

  @doc ~S"""
  Cria um arquivo com o nome do arquivo e o conteúdo passado por argumento.

  ## Parameters

  - Nome do arquivo
  - Conteúdo elixir

  ## Examples

  ```elixir
  iex> Repository.save!("nome_arquivo", %{nome: "Maria da silva", idade: 26})
  ```

  """
  def save!(filename, content) do
    @db_folder |> File.mkdir_p!()

    "#{@db_folder}/#{filename}"
    |> File.write!(:erlang.term_to_binary(content))
  end

  @doc ~S"""
  Deleta o arquivo com o nome passado por argumento.

  ## Parameters

  - Nome do arquivo

  ## Examples

  ```elixir
  iex(1)> Repository.save!("nome_arquivo", %{nome: "Maria da silva", idade: 26})
  iex(2)> Repository.delete!("nome_arquivo")
  ```

  """
  def delete!(filename) do
    case @db_folder |> File.exists?() do
      true ->
        "#{@db_folder}/#{filename}" |> File.rm!()
    end
  end
end
