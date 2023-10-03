defmodule App.Products.Get do
  alias App.Products.Product
  alias App.Repo

  def call(id) do
    case Repo.get(Product, id) do
      nil -> {:error, :not_found}
      product -> {:ok, product}
    end
  end
end
