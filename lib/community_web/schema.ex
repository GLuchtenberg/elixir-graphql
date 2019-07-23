defmodule CommunityWeb.Schema do
  use Absinthe.Schema
  import_types(CommunityWeb.Schema.Link)
  alias CommunityWeb.NewsResolver

  query do
    @desc "Get all links"
    field :all_links, non_null(list_of(:link)) do
      resolve(&NewsResolver.all_links/3)
    end
  end

  mutation do
    field :create_link, :link do
      arg(:url, non_null(:string))
      arg(:description, non_null(:string))
      arg(:title, non_null(:string))

      resolve(&NewsResolver.create_link/3)
    end
  end
end
