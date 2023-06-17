defmodule ElixirApiRestaurant.Repository do
  @db_folder "./persist"

  alias ElixirApiRestaurant.Client

  def save_client!(%Client{} = client) do
    @db_folder
    |> File.mkdir_p!()

    filename =
      client
      |> Map.get(:name)
      |> Slug.slugify()

    "#{@db_folder}/#{filename}"
    |> File.write!(:erlang.term_to_binary(client))

    :ok
  end
end
