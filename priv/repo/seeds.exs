# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Community.Repo.insert!(%Community.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Community.News.Link
alias Community.Repo

%Link{title: "GraphQL", description: "The best query language", url: "http://graphql.og"}
|> Repo.insert!()

%Link{title: "Apollo", description: "GraphQL Client", url: "http://dev.apollodata.com"}
|> Repo.insert!()
