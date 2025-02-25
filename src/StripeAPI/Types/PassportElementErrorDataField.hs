-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PassportElementErrorDataField
module StripeAPI.Types.PassportElementErrorDataField where

import qualified Prelude as GHC.Integer.Type
import qualified Prelude as GHC.Maybe
import qualified Control.Monad.Fail
import qualified Data.Aeson
import qualified Data.Aeson as Data.Aeson.Encoding.Internal
import qualified Data.Aeson as Data.Aeson.Types
import qualified Data.Aeson as Data.Aeson.Types.FromJSON
import qualified Data.Aeson as Data.Aeson.Types.ToJSON
import qualified Data.Aeson as Data.Aeson.Types.Internal
import qualified Data.ByteString.Char8
import qualified Data.ByteString.Char8 as Data.ByteString.Internal
import qualified Data.Functor
import qualified Data.Scientific
import qualified Data.Text
import qualified Data.Text.Internal
import qualified Data.Time.Calendar as Data.Time.Calendar.Days
import qualified Data.Time.LocalTime as Data.Time.LocalTime.Internal.ZonedTime
import qualified GHC.Base
import qualified GHC.Classes
import qualified GHC.Int
import qualified GHC.Show
import qualified GHC.Types
import qualified StripeAPI.Common
import StripeAPI.TypeAlias

-- | Defines the object schema located at @components.schemas.PassportElementErrorDataField@ in the specification.
-- 
-- Represents an issue in one of the data fields that was provided by the user. The error is considered resolved when the field\'s value changes.
data PassportElementErrorDataField = PassportElementErrorDataField {
  -- | data_hash: Base64-encoded data hash
  passportElementErrorDataFieldDataHash :: Data.Text.Internal.Text
  -- | field_name: Name of the data field which has the error
  , passportElementErrorDataFieldFieldName :: Data.Text.Internal.Text
  -- | message: Error message
  , passportElementErrorDataFieldMessage :: Data.Text.Internal.Text
  -- | source: Error source, must be *data*
  , passportElementErrorDataFieldSource :: Data.Text.Internal.Text
  -- | type: The section of the user\'s Telegram Passport which has the error, one of “personal\\_details”, “passport”, “driver\\_license”, “identity\\_card”, “internal\\_passport”, “address”
  , passportElementErrorDataFieldType :: PassportElementErrorDataFieldType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorDataField
    where toJSON obj = Data.Aeson.Types.Internal.object ("data_hash" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldDataHash obj : "field_name" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldFieldName obj : "message" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldMessage obj : "source" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldSource obj : "type" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("data_hash" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldDataHash obj) GHC.Base.<> (("field_name" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldFieldName obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldMessage obj) GHC.Base.<> (("source" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldSource obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= passportElementErrorDataFieldType obj)))))
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorDataField
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PassportElementErrorDataField" (\obj -> ((((GHC.Base.pure PassportElementErrorDataField GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "data_hash")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "field_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PassportElementErrorDataField' with all required fields.
mkPassportElementErrorDataField :: Data.Text.Internal.Text -- ^ 'passportElementErrorDataFieldDataHash'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorDataFieldFieldName'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorDataFieldMessage'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorDataFieldSource'
  -> PassportElementErrorDataFieldType' -- ^ 'passportElementErrorDataFieldType'
  -> PassportElementErrorDataField
mkPassportElementErrorDataField passportElementErrorDataFieldDataHash passportElementErrorDataFieldFieldName passportElementErrorDataFieldMessage passportElementErrorDataFieldSource passportElementErrorDataFieldType = PassportElementErrorDataField{passportElementErrorDataFieldDataHash = passportElementErrorDataFieldDataHash,
                                                                                                                                                                                                                                                        passportElementErrorDataFieldFieldName = passportElementErrorDataFieldFieldName,
                                                                                                                                                                                                                                                        passportElementErrorDataFieldMessage = passportElementErrorDataFieldMessage,
                                                                                                                                                                                                                                                        passportElementErrorDataFieldSource = passportElementErrorDataFieldSource,
                                                                                                                                                                                                                                                        passportElementErrorDataFieldType = passportElementErrorDataFieldType}
-- | Defines the enum schema located at @components.schemas.PassportElementErrorDataField.properties.type@ in the specification.
-- 
-- The section of the user\'s Telegram Passport which has the error, one of “personal\\_details”, “passport”, “driver\\_license”, “identity\\_card”, “internal\\_passport”, “address”
data PassportElementErrorDataFieldType' =
   PassportElementErrorDataFieldType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PassportElementErrorDataFieldType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PassportElementErrorDataFieldType'EnumPersonalDetails -- ^ Represents the JSON value @"personal_details"@
  | PassportElementErrorDataFieldType'EnumPassport -- ^ Represents the JSON value @"passport"@
  | PassportElementErrorDataFieldType'EnumDriverLicense -- ^ Represents the JSON value @"driver_license"@
  | PassportElementErrorDataFieldType'EnumIdentityCard -- ^ Represents the JSON value @"identity_card"@
  | PassportElementErrorDataFieldType'EnumInternalPassport -- ^ Represents the JSON value @"internal_passport"@
  | PassportElementErrorDataFieldType'EnumAddress -- ^ Represents the JSON value @"address"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorDataFieldType'
    where toJSON (PassportElementErrorDataFieldType'Other val) = val
          toJSON (PassportElementErrorDataFieldType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PassportElementErrorDataFieldType'EnumPersonalDetails) = "personal_details"
          toJSON (PassportElementErrorDataFieldType'EnumPassport) = "passport"
          toJSON (PassportElementErrorDataFieldType'EnumDriverLicense) = "driver_license"
          toJSON (PassportElementErrorDataFieldType'EnumIdentityCard) = "identity_card"
          toJSON (PassportElementErrorDataFieldType'EnumInternalPassport) = "internal_passport"
          toJSON (PassportElementErrorDataFieldType'EnumAddress) = "address"
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorDataFieldType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "personal_details" -> PassportElementErrorDataFieldType'EnumPersonalDetails
                                            | val GHC.Classes.== "passport" -> PassportElementErrorDataFieldType'EnumPassport
                                            | val GHC.Classes.== "driver_license" -> PassportElementErrorDataFieldType'EnumDriverLicense
                                            | val GHC.Classes.== "identity_card" -> PassportElementErrorDataFieldType'EnumIdentityCard
                                            | val GHC.Classes.== "internal_passport" -> PassportElementErrorDataFieldType'EnumInternalPassport
                                            | val GHC.Classes.== "address" -> PassportElementErrorDataFieldType'EnumAddress
                                            | GHC.Base.otherwise -> PassportElementErrorDataFieldType'Other val)
