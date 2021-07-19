defmodule Api.Repo.Migrations.PostTable do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :autor, :string
      add :titulo, :string
      add :img_url, :string
      add :conteudo, :string

      timestamps()
    end

    create unique_index(:posts, [:titulo])
  end
end
