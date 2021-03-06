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

defmodule GoogleApi.CloudTasks.V2beta2.Model.LeaseTasksRequest do
  @moduledoc """
  Request message for leasing tasks using LeaseTasks.

  ## Attributes

  - filter (String.t): &#x60;filter&#x60; can be used to specify a subset of tasks to lease.  When &#x60;filter&#x60; is set to &#x60;tag&#x3D;&lt;my-tag&gt;&#x60; then the response will contain only tasks whose tag is equal to &#x60;&lt;my-tag&gt;&#x60;. &#x60;&lt;my-tag&gt;&#x60; must be less than 500 characters.  When &#x60;filter&#x60; is set to &#x60;tag_function&#x3D;oldest_tag()&#x60;, only tasks which have the same tag as the task with the oldest schedule_time will be returned.  Grammar Syntax:  * &#x60;filter &#x3D; \&quot;tag&#x3D;\&quot; tag | \&quot;tag_function&#x3D;\&quot; function&#x60;  * &#x60;tag &#x3D; string&#x60;  * &#x60;function &#x3D; \&quot;oldest_tag()\&quot;&#x60;  The &#x60;oldest_tag()&#x60; function returns tasks which have the same tag as the oldest task (ordered by schedule time).  SDK compatibility: Although the SDK allows tags to be either string or [bytes](https://cloud.google.com/appengine/docs/standard/java/javadoc/com/google/appengine/api/taskqueue/TaskOptions.html#tag-byte:A-), only UTF-8 encoded tags can be used in Cloud Tasks. Tag which aren&#39;t UTF-8 encoded can&#39;t be used in the filter and the task&#39;s tag will be displayed as empty in Cloud Tasks. Defaults to: `null`.
  - leaseDuration (String.t):  After the worker has successfully finished the work associated with the task, the worker must call via AcknowledgeTask before the schedule_time. Otherwise the task will be returned to a later LeaseTasks call so that another worker can retry it.  The maximum lease duration is 1 week. &#x60;lease_duration&#x60; will be truncated to the nearest second. Defaults to: `null`.
  - maxTasks (integer()): The maximum number of tasks to lease.  The system will make a best effort to return as close to as &#x60;max_tasks&#x60; as possible.  The largest that &#x60;max_tasks&#x60; can be is 1000.  The maximum total size of a lease tasks response is 32 MB. If the sum of all task sizes requested reaches this limit, fewer tasks than requested are returned. Defaults to: `null`.
  - responseView (String.t): The response_view specifies which subset of the Task will be returned.  By default response_view is BASIC; not all information is retrieved by default because some data, such as payloads, might be desirable to return only when needed because of its large size or because of the sensitivity of data that it contains.  Authorization for FULL requires &#x60;cloudtasks.tasks.fullView&#x60; [Google IAM](https://cloud.google.com/iam/) permission on the Task resource. Defaults to: `null`.
    - Enum - one of [VIEW_UNSPECIFIED, BASIC, FULL]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filter => any(),
          :leaseDuration => any(),
          :maxTasks => any(),
          :responseView => any()
        }

  field(:filter)
  field(:leaseDuration)
  field(:maxTasks)
  field(:responseView)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.LeaseTasksRequest do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.LeaseTasksRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.LeaseTasksRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
