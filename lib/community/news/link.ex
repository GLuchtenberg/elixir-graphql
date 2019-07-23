defmodule Community.News.Link do
  use Ecto.Schema
  import Ecto.Changeset


  schema "links" do
    field :description, :string
    field :title, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:title, :url, :description])
    |> validate_required([:title, :url, :description])
  end
end
