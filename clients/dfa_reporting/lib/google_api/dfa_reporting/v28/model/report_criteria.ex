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

defmodule GoogleApi.DFAReporting.V28.Model.ReportCriteria do
  @moduledoc """
  The report criteria for a report of type \&quot;STANDARD\&quot;.

  ## Attributes

  - activities (Activities): Activity group. Defaults to: `null`.
  - customRichMediaEvents (CustomRichMediaEvents): Custom Rich Media Events group. Defaults to: `null`.
  - dateRange (DateRange): The date range for which this report should be run. Defaults to: `null`.
  - dimensionFilters ([DimensionValue]): The list of filters on which dimensions are filtered. Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed. Defaults to: `null`.
  - dimensions ([SortedDimension]): The list of standard dimensions the report should include. Defaults to: `null`.
  - metricNames ([String.t]): The list of names of metrics the report should include. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activities => GoogleApi.DFAReporting.V28.Model.Activities.t(),
          :customRichMediaEvents => GoogleApi.DFAReporting.V28.Model.CustomRichMediaEvents.t(),
          :dateRange => GoogleApi.DFAReporting.V28.Model.DateRange.t(),
          :dimensionFilters => list(GoogleApi.DFAReporting.V28.Model.DimensionValue.t()),
          :dimensions => list(GoogleApi.DFAReporting.V28.Model.SortedDimension.t()),
          :metricNames => list(any())
        }

  field(:activities, as: GoogleApi.DFAReporting.V28.Model.Activities)
  field(:customRichMediaEvents, as: GoogleApi.DFAReporting.V28.Model.CustomRichMediaEvents)
  field(:dateRange, as: GoogleApi.DFAReporting.V28.Model.DateRange)
  field(:dimensionFilters, as: GoogleApi.DFAReporting.V28.Model.DimensionValue, type: :list)
  field(:dimensions, as: GoogleApi.DFAReporting.V28.Model.SortedDimension, type: :list)
  field(:metricNames, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.ReportCriteria do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.ReportCriteria.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.ReportCriteria do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end