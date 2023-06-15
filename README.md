# Elixir Api Restaurant

## Requisitos do software

- Cadastro de clientes:

  - Permitir a criação de novos perfis de clientes, com informações como nome, endereço, número de telefone e preferências.
  - Possibilitar a atualização dos dados dos clientes existentes.
  - Permitir a exclusão de perfis de clientes.

- Gerenciamento de cardápio:

  - Permitir a adição de novos pratos e bebidas ao cardápio, incluindo informações como nome, descrição, preço e disponibilidade.
  - Possibilitar a atualização dos itens do cardápio existentes.
  - Permitir a exclusão de pratos e bebidas do cardápio.

- Pedidos:

  - Permitir que os clientes façam pedidos, selecionando os itens do cardápio.
  - Armazenar informações sobre os pedidos, como o número da mesa, a lista de itens solicitados e o status do pedido (em andamento, concluído, cancelado).
  - Possibilitar a atualização do status dos pedidos.

- Gerenciamento de mesas:

  - Permitir a criação e atribuição de mesas para os clientes.
  - Rastrear o status das mesas (ocupada, livre, reservada).
  - Possibilitar a atualização do status das mesas.

- Gerenciamento de estoque:

  - Permitir o controle do estoque de ingredientes e produtos utilizados no restaurante.
  - Atualizar automaticamente o estoque quando os pedidos são concluídos.
  - Alertar quando os níveis de estoque estiverem baixos.

- Relatórios:
  - Gerar relatórios de vendas diárias, semanais e mensais.
  - Mostrar informações como os pratos mais pedidos, as mesas mais frequentadas e as receitas geradas.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_api_restaurant` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_api_restaurant, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/elixir_api_restaurant>.
