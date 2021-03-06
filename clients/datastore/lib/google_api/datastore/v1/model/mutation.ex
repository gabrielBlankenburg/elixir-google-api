# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Datastore.V1.Model.Mutation do
  @moduledoc """
  A mutation to apply to an entity.

  ## Attributes

  - baseVersion (String.t): The version of the entity that this mutation is being applied to. If this does not match the current version on the server, the mutation conflicts. Defaults to: `null`.
  - delete (Key): The key of the entity to delete. The entity may or may not already exist. Must have a complete key path and must not be reserved/read-only. Defaults to: `null`.
  - insert (Entity): The entity to insert. The entity must not already exist. The entity key&#39;s final path element may be incomplete. Defaults to: `null`.
  - update (Entity): The entity to update. The entity must already exist. Must have a complete key path. Defaults to: `null`.
  - upsert (Entity): The entity to upsert. The entity may or may not already exist. The entity key&#39;s final path element may be incomplete. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseVersion => any(),
          :delete => GoogleApi.Datastore.V1.Model.Key.t(),
          :insert => GoogleApi.Datastore.V1.Model.Entity.t(),
          :update => GoogleApi.Datastore.V1.Model.Entity.t(),
          :upsert => GoogleApi.Datastore.V1.Model.Entity.t()
        }

  field(:baseVersion)
  field(:delete, as: GoogleApi.Datastore.V1.Model.Key)
  field(:insert, as: GoogleApi.Datastore.V1.Model.Entity)
  field(:update, as: GoogleApi.Datastore.V1.Model.Entity)
  field(:upsert, as: GoogleApi.Datastore.V1.Model.Entity)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.Mutation do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.Mutation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.Mutation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
