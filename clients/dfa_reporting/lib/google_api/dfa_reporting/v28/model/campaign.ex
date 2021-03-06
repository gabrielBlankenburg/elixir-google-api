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

defmodule GoogleApi.DFAReporting.V28.Model.Campaign do
  @moduledoc """
  Contains properties of a Campaign Manager campaign.

  ## Attributes

  - accountId (String.t): Account ID of this campaign. This is a read-only field that can be left blank. Defaults to: `null`.
  - adBlockingConfiguration (AdBlockingConfiguration): Ad blocking settings for this campaign. Defaults to: `null`.
  - additionalCreativeOptimizationConfigurations ([CreativeOptimizationConfiguration]): Additional creative optimization configurations for the campaign. Defaults to: `null`.
  - advertiserGroupId (String.t): Advertiser group ID of the associated advertiser. Defaults to: `null`.
  - advertiserId (String.t): Advertiser ID of this campaign. This is a required field. Defaults to: `null`.
  - advertiserIdDimensionValue (DimensionValue): Dimension value for the advertiser ID of this campaign. This is a read-only, auto-generated field. Defaults to: `null`.
  - archived (boolean()): Whether this campaign has been archived. Defaults to: `null`.
  - audienceSegmentGroups ([AudienceSegmentGroup]): Audience segment groups assigned to this campaign. Cannot have more than 300 segment groups. Defaults to: `null`.
  - billingInvoiceCode (String.t): Billing invoice code included in the Campaign Manager client billing invoices associated with the campaign. Defaults to: `null`.
  - clickThroughUrlSuffixProperties (ClickThroughUrlSuffixProperties): Click-through URL suffix override properties for this campaign. Defaults to: `null`.
  - comment (String.t): Arbitrary comments about this campaign. Must be less than 256 characters long. Defaults to: `null`.
  - createInfo (LastModifiedInfo): Information about the creation of this campaign. This is a read-only field. Defaults to: `null`.
  - creativeGroupIds ([String.t]): List of creative group IDs that are assigned to the campaign. Defaults to: `null`.
  - creativeOptimizationConfiguration (CreativeOptimizationConfiguration): Creative optimization configuration for the campaign. Defaults to: `null`.
  - defaultClickThroughEventTagProperties (DefaultClickThroughEventTagProperties): Click-through event tag ID override properties for this campaign. Defaults to: `null`.
  - endDate (Date.t): Date on which the campaign will stop running. On insert, the end date must be today or a future date. The end date must be later than or be the same as the start date. If, for example, you set 6/25/2015 as both the start and end dates, the effective campaign run date is just that day only, 6/25/2015. The hours, minutes, and seconds of the end date should not be set, as doing so will result in an error. This is a required field. Defaults to: `null`.
  - eventTagOverrides ([EventTagOverride]): Overrides that can be used to activate or deactivate advertiser event tags. Defaults to: `null`.
  - externalId (String.t): External ID for this campaign. Defaults to: `null`.
  - id (String.t): ID of this campaign. This is a read-only auto-generated field. Defaults to: `null`.
  - idDimensionValue (DimensionValue): Dimension value for the ID of this campaign. This is a read-only, auto-generated field. Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dfareporting#campaign\&quot;. Defaults to: `null`.
  - lastModifiedInfo (LastModifiedInfo): Information about the most recent modification of this campaign. This is a read-only field. Defaults to: `null`.
  - lookbackConfiguration (LookbackConfiguration): Lookback window settings for the campaign. Defaults to: `null`.
  - name (String.t): Name of this campaign. This is a required field and must be less than 256 characters long and unique among campaigns of the same advertiser. Defaults to: `null`.
  - nielsenOcrEnabled (boolean()): Whether Nielsen reports are enabled for this campaign. Defaults to: `null`.
  - startDate (Date.t): Date on which the campaign starts running. The start date can be any date. The hours, minutes, and seconds of the start date should not be set, as doing so will result in an error. This is a required field. Defaults to: `null`.
  - subaccountId (String.t): Subaccount ID of this campaign. This is a read-only field that can be left blank. Defaults to: `null`.
  - traffickerEmails ([String.t]): Campaign trafficker contact emails. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :adBlockingConfiguration =>
            GoogleApi.DFAReporting.V28.Model.AdBlockingConfiguration.t(),
          :additionalCreativeOptimizationConfigurations =>
            list(GoogleApi.DFAReporting.V28.Model.CreativeOptimizationConfiguration.t()),
          :advertiserGroupId => any(),
          :advertiserId => any(),
          :advertiserIdDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :archived => any(),
          :audienceSegmentGroups =>
            list(GoogleApi.DFAReporting.V28.Model.AudienceSegmentGroup.t()),
          :billingInvoiceCode => any(),
          :clickThroughUrlSuffixProperties =>
            GoogleApi.DFAReporting.V28.Model.ClickThroughUrlSuffixProperties.t(),
          :comment => any(),
          :createInfo => GoogleApi.DFAReporting.V28.Model.LastModifiedInfo.t(),
          :creativeGroupIds => list(any()),
          :creativeOptimizationConfiguration =>
            GoogleApi.DFAReporting.V28.Model.CreativeOptimizationConfiguration.t(),
          :defaultClickThroughEventTagProperties =>
            GoogleApi.DFAReporting.V28.Model.DefaultClickThroughEventTagProperties.t(),
          :endDate => Date.t(),
          :eventTagOverrides => list(GoogleApi.DFAReporting.V28.Model.EventTagOverride.t()),
          :externalId => any(),
          :id => any(),
          :idDimensionValue => GoogleApi.DFAReporting.V28.Model.DimensionValue.t(),
          :kind => any(),
          :lastModifiedInfo => GoogleApi.DFAReporting.V28.Model.LastModifiedInfo.t(),
          :lookbackConfiguration => GoogleApi.DFAReporting.V28.Model.LookbackConfiguration.t(),
          :name => any(),
          :nielsenOcrEnabled => any(),
          :startDate => Date.t(),
          :subaccountId => any(),
          :traffickerEmails => list(any())
        }

  field(:accountId)
  field(:adBlockingConfiguration, as: GoogleApi.DFAReporting.V28.Model.AdBlockingConfiguration)

  field(
    :additionalCreativeOptimizationConfigurations,
    as: GoogleApi.DFAReporting.V28.Model.CreativeOptimizationConfiguration,
    type: :list
  )

  field(:advertiserGroupId)
  field(:advertiserId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:archived)

  field(
    :audienceSegmentGroups,
    as: GoogleApi.DFAReporting.V28.Model.AudienceSegmentGroup,
    type: :list
  )

  field(:billingInvoiceCode)

  field(
    :clickThroughUrlSuffixProperties,
    as: GoogleApi.DFAReporting.V28.Model.ClickThroughUrlSuffixProperties
  )

  field(:comment)
  field(:createInfo, as: GoogleApi.DFAReporting.V28.Model.LastModifiedInfo)
  field(:creativeGroupIds, type: :list)

  field(
    :creativeOptimizationConfiguration,
    as: GoogleApi.DFAReporting.V28.Model.CreativeOptimizationConfiguration
  )

  field(
    :defaultClickThroughEventTagProperties,
    as: GoogleApi.DFAReporting.V28.Model.DefaultClickThroughEventTagProperties
  )

  field(:endDate, as: Date)
  field(:eventTagOverrides, as: GoogleApi.DFAReporting.V28.Model.EventTagOverride, type: :list)
  field(:externalId)
  field(:id)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V28.Model.DimensionValue)
  field(:kind)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V28.Model.LastModifiedInfo)
  field(:lookbackConfiguration, as: GoogleApi.DFAReporting.V28.Model.LookbackConfiguration)
  field(:name)
  field(:nielsenOcrEnabled)
  field(:startDate, as: Date)
  field(:subaccountId)
  field(:traffickerEmails, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V28.Model.Campaign do
  def decode(value, options) do
    GoogleApi.DFAReporting.V28.Model.Campaign.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V28.Model.Campaign do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
