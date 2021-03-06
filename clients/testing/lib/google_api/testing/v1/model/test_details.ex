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

defmodule GoogleApi.Testing.V1.Model.TestDetails do
  @moduledoc """
  Additional details about the progress of the running test.

  ## Attributes

  - errorMessage (String.t): Output only. If the TestState is ERROR, then this string will contain human-readable details about the error. Defaults to: `null`.
  - progressMessages ([String.t]): Output only. Human-readable, detailed descriptions of the test&#39;s progress. For example: \&quot;Provisioning a device\&quot;, \&quot;Starting Test\&quot;.  During the course of execution new data may be appended to the end of progress_messages. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorMessage => any(),
          :progressMessages => list(any())
        }

  field(:errorMessage)
  field(:progressMessages, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.TestDetails do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.TestDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.TestDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
