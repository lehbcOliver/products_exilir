defmodule App.Repo.Migrations.AddProductsTable do
  use Ecto.Migration

  def change do
    create table("products") do
      add :name, :string, null: false
      add :price, :float, null: false

      timestamps()
    end
  end
end
