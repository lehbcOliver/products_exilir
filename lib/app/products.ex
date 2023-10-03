defmodule App.Products do
  defdelegate create(params), to: App.Products.Create, as: :call

  defdelegate get(id), to: App.Products.Get, as: :call

  defdelegate index(), to: App.Products.Index, as: :call
end
