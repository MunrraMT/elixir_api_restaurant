defmodule ElixirApiRestaurant.RepositoryTest do
  use ExUnit.Case, async: true

  alias ElixirApiRestaurant.Repository

  doctest(Repository)

  describe "save!/1" do
    test "should create file for save data" do
      content_for_save = %{nome: "Maria da silva", idade: 26}
      filename = "nome_arquivo"
      path_to_file = "./persist/#{filename}"

      Repository.save!(filename, content_for_save)

      try do
        assert File.exists?(path_to_file)
        assert File.read!(path_to_file) |> :erlang.binary_to_term() == content_for_save
      after
        File.rm!(path_to_file)
      end
    end
  end

  describe "delete!/1" do
    test "should delete file data" do
      content_for_save = %{nome: "Maria da silva", idade: 26}
      filename = "nome_arquivo"
      path_to_file = "./persist/#{filename}"

      Repository.save!(filename, content_for_save)
      Repository.delete!(filename)

      assert File.exists?(path_to_file) === false
    end
  end
end
