defmodule Sling.GuardianSerializer do
  @behaviour Guardian.Serializer

  alias Sling.Repo
  alias Sling.User

  def for_token(user = %User{}), do: {:ok, "User:#{user.id}"}
  def for_token(_), do: {:error, "Unknown resource type"}

  def from_toekn("User:" <> id), do: {:ok, Repo.get(User, String.to_integer(id))}
  def from_toekn(_), do: {:error, "Unknown resource type"}
end