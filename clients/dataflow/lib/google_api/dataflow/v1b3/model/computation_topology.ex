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

defmodule GoogleApi.Dataflow.V1b3.Model.ComputationTopology do
  @moduledoc """
  All configuration data for a particular Computation.

  ## Attributes

  - computationId (String): The ID of the computation. Defaults to: `null`.
  - inputs (List[StreamLocation]): The inputs to the computation. Defaults to: `null`.
  - keyRanges (List[KeyRangeLocation]): The key ranges processed by the computation. Defaults to: `null`.
  - outputs (List[StreamLocation]): The outputs from the computation. Defaults to: `null`.
  - stateFamilies (List[StateFamilyConfig]): The state family values. Defaults to: `null`.
  - systemStageName (String): The system stage name. Defaults to: `null`.
  """

  defstruct [
    :"computationId",
    :"inputs",
    :"keyRanges",
    :"outputs",
    :"stateFamilies",
    :"systemStageName"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ComputationTopology do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"inputs", :list, GoogleApi.Dataflow.V1b3.Model.StreamLocation, options)
    |> deserialize(:"keyRanges", :list, GoogleApi.Dataflow.V1b3.Model.KeyRangeLocation, options)
    |> deserialize(:"outputs", :list, GoogleApi.Dataflow.V1b3.Model.StreamLocation, options)
    |> deserialize(:"stateFamilies", :list, GoogleApi.Dataflow.V1b3.Model.StateFamilyConfig, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ComputationTopology do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end
