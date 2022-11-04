defmodule MyApp.Repo.Migrations.UsersAddAcceptTermsConditions do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :accept_terms_conditions, :boolean, null: true
    end
  end
end
