defmodule AppWeb.ProductsJSON do
  alias App.Products.Product

  def create(%{product: product}) do
    %{
      message: "Produto criado com sucesso",
      data: data(product)
    }
  end

  def get(%{product: product}), do: data(product)
  def index(%{products: products}) do
    %{data: for(product <- products, do: data(product))}
  end

  defp data(%Product{} = product) do
    %{
      id: product.id,
      name: product.name,
      price: product.price,
      insert_at: product.inserted_at,
      updated_at: product.updated_at
    }
  end
end
