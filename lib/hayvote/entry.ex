defmodule Hayvote.Entry do
  use Ecto.Schema
  import Ecto.Changeset

  schema "entries" do
    field :title, :string
    field :votes, :integer, default: 0
    field :poll_id, :id

    timestamps()
  end

  @doc false
  def changeset(entry, attrs) do
    entry
    |> cast(attrs, [:title, :votes])
    |> validate_required([:title, :votes])
  end
end
