defmodule AppWeb.ProductsController do
  use AppWeb, :controller

  alias App.Products.Product
  alias App.Products

  action_fallback AppWeb.FallbackController

  def create(conn, params) do
    with {:ok, %Product{} = product} <- Products.create(params) do
      conn
      |> put_status(:created)
      |> render(:create, product: product)
    end
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %Product{} = product} <- Products.get(id) do
      conn
      |> put_status(:ok)
      |> render(:get, product: product)
    end
  end


  def index(conn, _params) do
    with {:ok, products} <- Products.index() do
      conn
      |> put_status(:ok)
      |> render(:index, products: products)
    end
  end

end
