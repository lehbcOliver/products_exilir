defmodule AppWeb.FallbackController do
  use AppWeb, :controller

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(json: AppWeb.ErrorJSON)
    |> render(:error, status: :not_found)
  end

  def call(conn, {:unset, nil}) do
    conn
    |> put_status(nil)
    |> put_view(json: AppWeb.ErrorJSON)
    |> render(:unset, status: nil)
  end

  def call(conn, {:error, changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(json: AppWeb.ErrorJSON)
    |> render(:error, changeset: changeset)
  end
end
