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

defmodule GoogleApi.SafeBrowsing.V4.Model.RiceDeltaEncoding do
  @moduledoc """
  The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes or compressed removal indices.

  ## Attributes

  - encodedData (binary()): The encoded deltas that are encoded using the Golomb-Rice coder. Defaults to: `null`.
  - firstValue (String.t): The offset of the first entry in the encoded data, or, if only a single integer was encoded, that single integer&#39;s value. If the field is empty or missing, assume zero. Defaults to: `null`.
  - numEntries (integer()): The number of entries that are delta encoded in the encoded data. If only a single integer was encoded, this will be zero and the single value will be stored in &#x60;first_value&#x60;. Defaults to: `null`.
  - riceParameter (integer()): The Golomb-Rice parameter, which is a number between 2 and 28. This field is missing (that is, zero) if &#x60;num_entries&#x60; is zero. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encodedData => any(),
          :firstValue => any(),
          :numEntries => any(),
          :riceParameter => any()
        }

  field(:encodedData)
  field(:firstValue)
  field(:numEntries)
  field(:riceParameter)
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.RiceDeltaEncoding do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.RiceDeltaEncoding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.RiceDeltaEncoding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
