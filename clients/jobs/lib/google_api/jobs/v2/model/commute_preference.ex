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

defmodule GoogleApi.Jobs.V2.Model.CommutePreference do
  @moduledoc """
  Input only.  Parameters needed for commute search.

  ## Attributes

  - allowNonStreetLevelAddress (boolean()): Optional. If &#x60;true&#x60;, jobs without street level addresses may also be returned. For city level addresses, the city center is used. For state and coarser level addresses, text matching is used. If this field is set to &#x60;false&#x60; or is not specified, only jobs that include street level addresses will be returned by commute search. Defaults to: `null`.
  - departureHourLocal (integer()): Optional.  The departure hour to use to calculate traffic impact. Accepts an integer between 0 and 23, representing the hour in the time zone of the start_location. Must not be present if road_traffic is specified. Defaults to: `null`.
  - method (String.t): Required.  The method of transportation for which to calculate the commute time. Defaults to: `null`.
    - Enum - one of [COMMUTE_METHOD_UNSPECIFIED, DRIVING, TRANSIT]
  - roadTraffic (String.t): Optional.  Specifies the traffic density to use when caculating commute time. Must not be present if departure_hour_local is specified. Defaults to: `null`.
    - Enum - one of [ROAD_TRAFFIC_UNSPECIFIED, TRAFFIC_FREE, BUSY_HOUR]
  - startLocation (LatLng): Required.  The latitude and longitude of the location from which to calculate the commute time. Defaults to: `null`.
  - travelTime (String.t): Required.  The maximum travel time in seconds. The maximum allowed value is &#x60;3600s&#x60; (one hour). Format is &#x60;123s&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowNonStreetLevelAddress => any(),
          :departureHourLocal => any(),
          :method => any(),
          :roadTraffic => any(),
          :startLocation => GoogleApi.Jobs.V2.Model.LatLng.t(),
          :travelTime => any()
        }

  field(:allowNonStreetLevelAddress)
  field(:departureHourLocal)
  field(:method)
  field(:roadTraffic)
  field(:startLocation, as: GoogleApi.Jobs.V2.Model.LatLng)
  field(:travelTime)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CommutePreference do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CommutePreference.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CommutePreference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end