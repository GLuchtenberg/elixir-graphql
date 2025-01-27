defmodule CommunityWeb.Router do
  use CommunityWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/" do
    pipe_through(:api)

    forward("/graphiql", Absinthe.Plug.GraphiQL,
      schema: CommunityWeb.Schema,
      interface: :simple,
      json_codec: Jason,
      context: %{pubsub: CommunityWeb.Endpoint}
    )
  end
end
