-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema InlineQueryResultVenue
module StripeAPI.Types.InlineQueryResultVenue where

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
import {-# SOURCE #-} StripeAPI.Types.InlineKeyboardMarkup
import {-# SOURCE #-} StripeAPI.Types.InputMessageContent

-- | Defines the object schema located at @components.schemas.InlineQueryResultVenue@ in the specification.
-- 
-- Represents a venue. By default, the venue will be sent by the user. Alternatively, you can use *input\\_message\\_content* to send a message with the specified content instead of the venue.
data InlineQueryResultVenue = InlineQueryResultVenue {
  -- | address: Address of the venue
  inlineQueryResultVenueAddress :: Data.Text.Internal.Text
  -- | foursquare_id: *Optional*. Foursquare identifier of the venue if known
  , inlineQueryResultVenueFoursquareId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | foursquare_type: *Optional*. Foursquare type of the venue, if known. (For example, “arts\\_entertainment\/default”, “arts\\_entertainment\/aquarium” or “food\/icecream”.)
  , inlineQueryResultVenueFoursquareType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_id: *Optional*. Google Places identifier of the venue
  , inlineQueryResultVenueGooglePlaceId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | google_place_type: *Optional*. Google Places type of the venue. (See [supported types](https:\/\/developers.google.com\/places\/web-service\/supported_types).)
  , inlineQueryResultVenueGooglePlaceType :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | id: Unique identifier for this result, 1-64 Bytes
  , inlineQueryResultVenueId :: Data.Text.Internal.Text
  -- | input_message_content: This object represents the content of a message to be sent as a result of an inline query. Telegram clients currently support the following 5 types:
  , inlineQueryResultVenueInputMessageContent :: (GHC.Maybe.Maybe InputMessageContent)
  -- | latitude: Latitude of the venue location in degrees
  , inlineQueryResultVenueLatitude :: GHC.Types.Double
  -- | longitude: Longitude of the venue location in degrees
  , inlineQueryResultVenueLongitude :: GHC.Types.Double
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , inlineQueryResultVenueReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | thumb_height: *Optional*. Thumbnail height
  , inlineQueryResultVenueThumbHeight :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | thumb_url: *Optional*. Url of the thumbnail for the result
  , inlineQueryResultVenueThumbUrl :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | thumb_width: *Optional*. Thumbnail width
  , inlineQueryResultVenueThumbWidth :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | title: Title of the venue
  , inlineQueryResultVenueTitle :: Data.Text.Internal.Text
  -- | type: Type of the result, must be *venue*
  , inlineQueryResultVenueType :: Data.Text.Internal.Text
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON InlineQueryResultVenue
    where toJSON obj = Data.Aeson.Types.Internal.object ("address" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueAddress obj : "foursquare_id" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueFoursquareId obj : "foursquare_type" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueFoursquareType obj : "google_place_id" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueGooglePlaceId obj : "google_place_type" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueGooglePlaceType obj : "id" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueId obj : "input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueInputMessageContent obj : "latitude" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueLatitude obj : "longitude" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueLongitude obj : "reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueReplyMarkup obj : "thumb_height" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueThumbHeight obj : "thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueThumbUrl obj : "thumb_width" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueThumbWidth obj : "title" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueTitle obj : "type" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueType obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("address" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueAddress obj) GHC.Base.<> (("foursquare_id" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueFoursquareId obj) GHC.Base.<> (("foursquare_type" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueFoursquareType obj) GHC.Base.<> (("google_place_id" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueGooglePlaceId obj) GHC.Base.<> (("google_place_type" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueGooglePlaceType obj) GHC.Base.<> (("id" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueId obj) GHC.Base.<> (("input_message_content" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueInputMessageContent obj) GHC.Base.<> (("latitude" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueLatitude obj) GHC.Base.<> (("longitude" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueLongitude obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueReplyMarkup obj) GHC.Base.<> (("thumb_height" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueThumbHeight obj) GHC.Base.<> (("thumb_url" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueThumbUrl obj) GHC.Base.<> (("thumb_width" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueThumbWidth obj) GHC.Base.<> (("title" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueTitle obj) GHC.Base.<> ("type" Data.Aeson.Types.ToJSON..= inlineQueryResultVenueType obj)))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON InlineQueryResultVenue
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "InlineQueryResultVenue" (\obj -> ((((((((((((((GHC.Base.pure InlineQueryResultVenue GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "address")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "foursquare_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "google_place_type")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "input_message_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "latitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "longitude")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_height")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_url")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "thumb_width")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "type"))
-- | Create a new 'InlineQueryResultVenue' with all required fields.
mkInlineQueryResultVenue :: Data.Text.Internal.Text -- ^ 'inlineQueryResultVenueAddress'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultVenueId'
  -> GHC.Types.Double -- ^ 'inlineQueryResultVenueLatitude'
  -> GHC.Types.Double -- ^ 'inlineQueryResultVenueLongitude'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultVenueTitle'
  -> Data.Text.Internal.Text -- ^ 'inlineQueryResultVenueType'
  -> InlineQueryResultVenue
mkInlineQueryResultVenue inlineQueryResultVenueAddress inlineQueryResultVenueId inlineQueryResultVenueLatitude inlineQueryResultVenueLongitude inlineQueryResultVenueTitle inlineQueryResultVenueType = InlineQueryResultVenue{inlineQueryResultVenueAddress = inlineQueryResultVenueAddress,
                                                                                                                                                                                                                               inlineQueryResultVenueFoursquareId = GHC.Maybe.Nothing,
                                                                                                                                                                                                                               inlineQueryResultVenueFoursquareType = GHC.Maybe.Nothing,
                                                                                                                                                                                                                               inlineQueryResultVenueGooglePlaceId = GHC.Maybe.Nothing,
                                                                                                                                                                                                                               inlineQueryResultVenueGooglePlaceType = GHC.Maybe.Nothing,
                                                                                                                                                                                                                               inlineQueryResultVenueId = inlineQueryResultVenueId,
                                                                                                                                                                                                                               inlineQueryResultVenueInputMessageContent = GHC.Maybe.Nothing,
                                                                                                                                                                                                                               inlineQueryResultVenueLatitude = inlineQueryResultVenueLatitude,
                                                                                                                                                                                                                               inlineQueryResultVenueLongitude = inlineQueryResultVenueLongitude,
                                                                                                                                                                                                                               inlineQueryResultVenueReplyMarkup = GHC.Maybe.Nothing,
                                                                                                                                                                                                                               inlineQueryResultVenueThumbHeight = GHC.Maybe.Nothing,
                                                                                                                                                                                                                               inlineQueryResultVenueThumbUrl = GHC.Maybe.Nothing,
                                                                                                                                                                                                                               inlineQueryResultVenueThumbWidth = GHC.Maybe.Nothing,
                                                                                                                                                                                                                               inlineQueryResultVenueTitle = inlineQueryResultVenueTitle,
                                                                                                                                                                                                                               inlineQueryResultVenueType = inlineQueryResultVenueType}
