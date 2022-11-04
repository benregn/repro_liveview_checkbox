defmodule MyApp.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :age, :integer
    field :name, :string
    field :accept_terms_conditions, :boolean

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :age, :accept_terms_conditions])
    |> validate_required([:name, :age, :accept_terms_conditions])
    |> validate_acceptance(:accept_terms_conditions)
  end
end
