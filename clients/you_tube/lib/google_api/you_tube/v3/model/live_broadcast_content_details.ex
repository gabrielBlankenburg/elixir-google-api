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

defmodule GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails do
  @moduledoc """
  Detailed settings of a broadcast.

  ## Attributes

  - boundStreamId (String.t): This value uniquely identifies the live stream bound to the broadcast. Defaults to: `null`.
  - boundStreamLastUpdateTimeMs (DateTime.t): The date and time that the live stream referenced by boundStreamId was last updated. Defaults to: `null`.
  - closedCaptionsType (String.t):  Defaults to: `null`.
    - Enum - one of [closedCaptionsDisabled, closedCaptionsEmbedded, closedCaptionsHttpPost]
  - enableAutoStart (boolean()): This setting indicates whether auto start is enabled for this broadcast. Defaults to: `null`.
  - enableClosedCaptions (boolean()): This setting indicates whether HTTP POST closed captioning is enabled for this broadcast. The ingestion URL of the closed captions is returned through the liveStreams API. This is mutually exclusive with using the closed_captions_type property, and is equivalent to setting closed_captions_type to CLOSED_CAPTIONS_HTTP_POST. Defaults to: `null`.
  - enableContentEncryption (boolean()): This setting indicates whether YouTube should enable content encryption for the broadcast. Defaults to: `null`.
  - enableDvr (boolean()): This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true.    Important: You must set the value to true and also set the enableArchive property&#39;s value to true if you want to make playback available immediately after the broadcast ends. Defaults to: `null`.
  - enableEmbed (boolean()): This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video. Defaults to: `null`.
  - enableLowLatency (boolean()): Indicates whether this broadcast has low latency enabled. Defaults to: `null`.
  - latencyPreference (String.t): If both this and enable_low_latency are set, they must match. LATENCY_NORMAL should match enable_low_latency&#x3D;false LATENCY_LOW should match enable_low_latency&#x3D;true LATENCY_ULTRA_LOW should have enable_low_latency omitted. Defaults to: `null`.
    - Enum - one of [low, normal, ultraLow]
  - mesh (binary()):  Defaults to: `null`.
  - monitorStream (MonitorStreamInfo): The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly. Defaults to: `null`.
  - projection (String.t): The projection format of this broadcast. This defaults to rectangular. Defaults to: `null`.
    - Enum - one of [360, mesh, rectangular]
  - recordFromStart (boolean()): Automatically start recording after the event goes live. The default value for this property is true.    Important: You must also set the enableDvr property&#39;s value to true if you want the playback to be available immediately after the broadcast ends. If you set this property&#39;s value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback. Defaults to: `null`.
  - startWithSlate (boolean()): This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast&#39;s status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint&#39;s eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers. Defaults to: `null`.
  - stereoLayout (String.t):  Defaults to: `null`.
    - Enum - one of [left_right, mono, top_bottom]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundStreamId => any(),
          :boundStreamLastUpdateTimeMs => DateTime.t(),
          :closedCaptionsType => any(),
          :enableAutoStart => any(),
          :enableClosedCaptions => any(),
          :enableContentEncryption => any(),
          :enableDvr => any(),
          :enableEmbed => any(),
          :enableLowLatency => any(),
          :latencyPreference => any(),
          :mesh => any(),
          :monitorStream => GoogleApi.YouTube.V3.Model.MonitorStreamInfo.t(),
          :projection => any(),
          :recordFromStart => any(),
          :startWithSlate => any(),
          :stereoLayout => any()
        }

  field(:boundStreamId)
  field(:boundStreamLastUpdateTimeMs, as: DateTime)
  field(:closedCaptionsType)
  field(:enableAutoStart)
  field(:enableClosedCaptions)
  field(:enableContentEncryption)
  field(:enableDvr)
  field(:enableEmbed)
  field(:enableLowLatency)
  field(:latencyPreference)
  field(:mesh)
  field(:monitorStream, as: GoogleApi.YouTube.V3.Model.MonitorStreamInfo)
  field(:projection)
  field(:recordFromStart)
  field(:startWithSlate)
  field(:stereoLayout)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveBroadcastContentDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
