defmodule CommunityWeb.Schema.Link do
  use Absinthe.Schema.Notation

  object :link do
    field(:id, non_null(:id))
    field(:title, non_null(:string))
    field(:url, non_null(:string))
    field(:description, non_null(:string))
  end
end
