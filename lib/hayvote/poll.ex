defmodule Hayvote.Poll do
  use Ecto.Schema
  import Ecto.Changeset

  schema "polls" do
    field :closed, :boolean, default: false
    field :title, :string

     has_many :entries, Hayvote.Entry, on_delete: :delete_all

    timestamps()
  end

  @doc false
  def changeset(poll, attrs) do
    poll
    |> cast(attrs, [:title, :closed])
    |> validate_required([:title, :closed])
  end
end
