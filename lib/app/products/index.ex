defmodule App.Products.Index do
  alias App.Repo
  alias App.Products.Product

  def call() do
    case Repo.all(Product) do
      nil ->{:error, :not_found}
      products ->{:ok, products}
    end
  end
end
