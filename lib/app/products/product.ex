defmodule App.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @required_params [:name, :price]

  schema "products" do
    field :name, :string
    field :price, :float

    timestamps()
  end

  def changeset(product \\ %__MODULE__{}, params) do
    product
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> validate_number(:price, greater_than: 0)
  end
end
