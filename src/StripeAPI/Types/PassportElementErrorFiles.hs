-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema PassportElementErrorFiles
module StripeAPI.Types.PassportElementErrorFiles where

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

-- | Defines the object schema located at @components.schemas.PassportElementErrorFiles@ in the specification.
-- 
-- Represents an issue with a list of scans. The error is considered resolved when the list of files containing the scans changes.
data PassportElementErrorFiles = PassportElementErrorFiles {
  -- | file_hashes: List of base64-encoded file hashes
  passportElementErrorFilesFileHashes :: ([Data.Text.Internal.Text])
  -- | message: Error message
  , passportElementErrorFilesMessage :: Data.Text.Internal.Text
  -- | source: Error source, must be *files*
  , passportElementErrorFilesSource :: Data.Text.Internal.Text
  -- | type: The section of the user\'s Telegram Passport which has the issue, one of “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration”, “temporary\\_registration”
  , passportElementErrorFilesType :: PassportElementErrorFilesType'
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorFiles
    where toJSON obj = Data.Aeson.Types.Internal.object ("file_hashes" Data.Aeson.Types.ToJSON..= passportElementErrorFilesFileHashes obj : "message" Data.Aeson.Types.ToJSON..= passportElementErrorFilesMessage obj : "source" Data.Aeson.Types.ToJSON..= passportElementErrorFilesSource obj : "type" Data.Aeson.Types.ToJSON..= passportElementErrorFilesType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("file_hashes" Data.Aeson.Types.ToJSON..= passportElementErrorFilesFileHashes obj) GHC.Base.<> (("message" Data.Aeson.Types.ToJSON..= passportElementErrorFilesMessage obj) GHC.Base.<> (("source" Data.Aeson.Types.ToJSON..= passportElementErrorFilesSource obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= passportElementErrorFilesType obj))))
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorFiles
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "PassportElementErrorFiles" (\obj -> (((GHC.Base.pure PassportElementErrorFiles GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "file_hashes")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "source")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'PassportElementErrorFiles' with all required fields.
mkPassportElementErrorFiles :: [Data.Text.Internal.Text] -- ^ 'passportElementErrorFilesFileHashes'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorFilesMessage'
  -> Data.Text.Internal.Text -- ^ 'passportElementErrorFilesSource'
  -> PassportElementErrorFilesType' -- ^ 'passportElementErrorFilesType'
  -> PassportElementErrorFiles
mkPassportElementErrorFiles passportElementErrorFilesFileHashes passportElementErrorFilesMessage passportElementErrorFilesSource passportElementErrorFilesType = PassportElementErrorFiles{passportElementErrorFilesFileHashes = passportElementErrorFilesFileHashes,
                                                                                                                                                                                           passportElementErrorFilesMessage = passportElementErrorFilesMessage,
                                                                                                                                                                                           passportElementErrorFilesSource = passportElementErrorFilesSource,
                                                                                                                                                                                           passportElementErrorFilesType = passportElementErrorFilesType}
-- | Defines the enum schema located at @components.schemas.PassportElementErrorFiles.properties.type@ in the specification.
-- 
-- The section of the user\'s Telegram Passport which has the issue, one of “utility\\_bill”, “bank\\_statement”, “rental\\_agreement”, “passport\\_registration”, “temporary\\_registration”
data PassportElementErrorFilesType' =
   PassportElementErrorFilesType'Other Data.Aeson.Types.Internal.Value -- ^ This case is used if the value encountered during decoding does not match any of the provided cases in the specification.
  | PassportElementErrorFilesType'Typed Data.Text.Internal.Text -- ^ This constructor can be used to send values to the server which are not present in the specification yet.
  | PassportElementErrorFilesType'EnumUtilityBill -- ^ Represents the JSON value @"utility_bill"@
  | PassportElementErrorFilesType'EnumBankStatement -- ^ Represents the JSON value @"bank_statement"@
  | PassportElementErrorFilesType'EnumRentalAgreement -- ^ Represents the JSON value @"rental_agreement"@
  | PassportElementErrorFilesType'EnumPassportRegistration -- ^ Represents the JSON value @"passport_registration"@
  | PassportElementErrorFilesType'EnumTemporaryRegistration -- ^ Represents the JSON value @"temporary_registration"@
  deriving (GHC.Show.Show, GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON PassportElementErrorFilesType'
    where toJSON (PassportElementErrorFilesType'Other val) = val
          toJSON (PassportElementErrorFilesType'Typed val) = Data.Aeson.Types.ToJSON.toJSON val
          toJSON (PassportElementErrorFilesType'EnumUtilityBill) = "utility_bill"
          toJSON (PassportElementErrorFilesType'EnumBankStatement) = "bank_statement"
          toJSON (PassportElementErrorFilesType'EnumRentalAgreement) = "rental_agreement"
          toJSON (PassportElementErrorFilesType'EnumPassportRegistration) = "passport_registration"
          toJSON (PassportElementErrorFilesType'EnumTemporaryRegistration) = "temporary_registration"
instance Data.Aeson.Types.FromJSON.FromJSON PassportElementErrorFilesType'
    where parseJSON val = GHC.Base.pure (if | val GHC.Classes.== "utility_bill" -> PassportElementErrorFilesType'EnumUtilityBill
                                            | val GHC.Classes.== "bank_statement" -> PassportElementErrorFilesType'EnumBankStatement
                                            | val GHC.Classes.== "rental_agreement" -> PassportElementErrorFilesType'EnumRentalAgreement
                                            | val GHC.Classes.== "passport_registration" -> PassportElementErrorFilesType'EnumPassportRegistration
                                            | val GHC.Classes.== "temporary_registration" -> PassportElementErrorFilesType'EnumTemporaryRegistration
                                            | GHC.Base.otherwise -> PassportElementErrorFilesType'Other val)
