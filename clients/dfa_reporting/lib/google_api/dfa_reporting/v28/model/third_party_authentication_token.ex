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

defmodule GoogleApi.DFAReporting.V28.Model.ThirdPartyAuthenticationToken do
  @moduledoc """
  Third Party Authentication Token

  ## Attributes

  - name (String.t): Name of the third-party authentication token. Defaults to: `null`.
  - value (String.t): Value of the third-party authentication token. This is a read-only, auto-generated field. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => any(),
          :value => any()
        }

  field(:name)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.ThirdPartyAuthenticationToken do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.ThirdPartyAuthenticationToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.ThirdPartyAuthenticationToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
