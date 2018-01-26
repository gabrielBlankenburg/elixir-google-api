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

defmodule GoogleApi.TaskQueue.V1beta2.Model.Task do
  @moduledoc """
  

  ## Attributes

  - enqueueTimestamp (String): Time (in seconds since the epoch) at which the task was enqueued. Defaults to: `null`.
  - id (String): Name of the task. Defaults to: `null`.
  - kind (String): The kind of object returned, in this case set to task. Defaults to: `null`.
  - leaseTimestamp (String): Time (in seconds since the epoch) at which the task lease will expire. This value is 0 if the task isnt currently leased out to a worker. Defaults to: `null`.
  - payloadBase64 (String): A bag of bytes which is the task payload. The payload on the JSON side is always Base64 encoded. Defaults to: `null`.
  - queueName (String): Name of the queue that the task is in. Defaults to: `null`.
  - retry_count (Integer): The number of leases applied to this task. Defaults to: `null`.
  - tag (String): Tag for the task, could be used later to lease tasks grouped by a specific tag. Defaults to: `null`.
  """

  defstruct [
    :"enqueueTimestamp",
    :"id",
    :"kind",
    :"leaseTimestamp",
    :"payloadBase64",
    :"queueName",
    :"retry_count",
    :"tag"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.TaskQueue.V1beta2.Model.Task do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.TaskQueue.V1beta2.Model.Task do
  def encode(value, options) do
    GoogleApi.TaskQueue.V1beta2.Deserializer.serialize_non_nil(value, options)
  end
end
