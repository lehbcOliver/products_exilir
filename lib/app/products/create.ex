defmodule App.Products.Create do
  alias App.Products.Product
  alias App.Repo

  def call(params) do
    params
    |> Product.changeset()
    |> Repo.insert()
  end
end
