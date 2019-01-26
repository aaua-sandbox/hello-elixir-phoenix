defmodule HelloElixirPhoenix.Articles.Article do
  use Ecto.Schema
  import Ecto.Changeset


  schema "articles" do
    field :body, :string
    field :title, :string

    timestamps()
  end

  # 登録内容のチェック
  # https://hexdocs.pm/ecto/Ecto.Changeset.html
  @doc false
  def changeset(article, attrs) do
    article
    |> cast(attrs, [:title, :body])
    |> validate_required([:title])
  end
end
