-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema Message
module StripeAPI.Types.Message where

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
import {-# SOURCE #-} StripeAPI.Types.Animation
import {-# SOURCE #-} StripeAPI.Types.Audio
import {-# SOURCE #-} StripeAPI.Types.Chat
import {-# SOURCE #-} StripeAPI.Types.Contact
import {-# SOURCE #-} StripeAPI.Types.Dice
import {-# SOURCE #-} StripeAPI.Types.Document
import {-# SOURCE #-} StripeAPI.Types.Game
import {-# SOURCE #-} StripeAPI.Types.InlineKeyboardMarkup
import {-# SOURCE #-} StripeAPI.Types.Invoice
import {-# SOURCE #-} StripeAPI.Types.Location
import {-# SOURCE #-} StripeAPI.Types.MessageAutoDeleteTimerChanged
import {-# SOURCE #-} StripeAPI.Types.MessageEntity
import {-# SOURCE #-} StripeAPI.Types.PassportData
import {-# SOURCE #-} StripeAPI.Types.PhotoSize
import {-# SOURCE #-} StripeAPI.Types.Poll
import {-# SOURCE #-} StripeAPI.Types.ProximityAlertTriggered
import {-# SOURCE #-} StripeAPI.Types.Sticker
import {-# SOURCE #-} StripeAPI.Types.SuccessfulPayment
import {-# SOURCE #-} StripeAPI.Types.User
import {-# SOURCE #-} StripeAPI.Types.Venue
import {-# SOURCE #-} StripeAPI.Types.Video
import {-# SOURCE #-} StripeAPI.Types.VideoNote
import {-# SOURCE #-} StripeAPI.Types.Voice
import {-# SOURCE #-} StripeAPI.Types.VoiceChatEnded
import {-# SOURCE #-} StripeAPI.Types.VoiceChatParticipantsInvited
import {-# SOURCE #-} StripeAPI.Types.VoiceChatScheduled

-- | Defines the object schema located at @components.schemas.Message@ in the specification.
-- 
-- This object represents a message.
data Message = Message {
  -- | animation: This object represents an animation file (GIF or H.264\/MPEG-4 AVC video without sound).
  messageAnimation :: (GHC.Maybe.Maybe Animation)
  -- | audio: This object represents an audio file to be treated as music by the Telegram clients.
  , messageAudio :: (GHC.Maybe.Maybe Audio)
  -- | author_signature: *Optional*. Signature of the post author for messages in channels, or the custom title of an anonymous group administrator
  , messageAuthorSignature :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption: *Optional*. Caption for the animation, audio, document, photo, video or voice, 0-1024 characters
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 1024
  -- * Minimum length of 0
  , messageCaption :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | caption_entities: *Optional*. For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption
  , messageCaptionEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | channel_chat_created: *Optional*. Service message: the channel has been created. This field can\'t be received in a message coming through updates, because bot can\'t be a member of a channel when it is created. It can only be found in reply\\_to\\_message if someone replies to a very first message in a channel.
  , messageChannelChatCreated :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | chat: This object represents a chat.
  , messageChat :: Chat
  -- | connected_website: *Optional*. The domain name of the website on which the user has logged in. [More about Telegram Login »](\/widgets\/login)
  , messageConnectedWebsite :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | contact: This object represents a phone contact.
  , messageContact :: (GHC.Maybe.Maybe Contact)
  -- | date: Date the message was sent in Unix time
  , messageDate :: GHC.Types.Int
  -- | delete_chat_photo: *Optional*. Service message: the chat photo was deleted
  , messageDeleteChatPhoto :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | dice: This object represents an animated emoji that displays a random value.
  , messageDice :: (GHC.Maybe.Maybe Dice)
  -- | document: This object represents a general file (as opposed to [photos](https:\/\/core.telegram.org\/bots\/api\/\#photosize), [voice messages](https:\/\/core.telegram.org\/bots\/api\/\#voice) and [audio files](https:\/\/core.telegram.org\/bots\/api\/\#audio)).
  , messageDocument :: (GHC.Maybe.Maybe Document)
  -- | edit_date: *Optional*. Date the message was last edited in Unix time
  , messageEditDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | entities: *Optional*. For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text
  , messageEntities :: (GHC.Maybe.Maybe ([MessageEntity]))
  -- | forward_date: *Optional*. For forwarded messages, date the original message was sent in Unix time
  , messageForwardDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | forward_from: This object represents a Telegram user or bot.
  , messageForwardFrom :: (GHC.Maybe.Maybe User)
  -- | forward_from_chat: This object represents a chat.
  , messageForwardFromChat :: (GHC.Maybe.Maybe Chat)
  -- | forward_from_message_id: *Optional*. For messages forwarded from channels, identifier of the original message in the channel
  , messageForwardFromMessageId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | forward_sender_name: *Optional*. Sender\'s name for messages forwarded from users who disallow adding a link to their account in forwarded messages
  , messageForwardSenderName :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | forward_signature: *Optional*. For forwarded messages that were originally sent in channels or by an anonymous chat administrator, signature of the message sender if present
  , messageForwardSignature :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | from: This object represents a Telegram user or bot.
  , messageFrom :: (GHC.Maybe.Maybe User)
  -- | game: This object represents a game. Use BotFather to create and edit games, their short names will act as unique identifiers.
  , messageGame :: (GHC.Maybe.Maybe Game)
  -- | group_chat_created: *Optional*. Service message: the group has been created
  , messageGroupChatCreated :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | has_protected_content: *Optional*. True, if the message can\'t be forwarded
  , messageHasProtectedContent :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | invoice: This object contains basic information about an invoice.
  , messageInvoice :: (GHC.Maybe.Maybe Invoice)
  -- | is_automatic_forward: *Optional*. True, if the message is a channel post that was automatically forwarded to the connected discussion group
  , messageIsAutomaticForward :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | left_chat_member: This object represents a Telegram user or bot.
  , messageLeftChatMember :: (GHC.Maybe.Maybe User)
  -- | location: This object represents a point on the map.
  , messageLocation :: (GHC.Maybe.Maybe Location)
  -- | media_group_id: *Optional*. The unique identifier of a media message group this message belongs to
  , messageMediaGroupId :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | message_auto_delete_timer_changed: This object represents a service message about a change in auto-delete timer settings.
  , messageMessageAutoDeleteTimerChanged :: (GHC.Maybe.Maybe MessageAutoDeleteTimerChanged)
  -- | message_id: Unique message identifier inside this chat
  , messageMessageId :: GHC.Types.Int
  -- | migrate_from_chat_id: *Optional*. The supergroup has been migrated from a group with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty\/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  , messageMigrateFromChatId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | migrate_to_chat_id: *Optional*. The group has been migrated to a supergroup with the specified identifier. This number may have more than 32 significant bits and some programming languages may have difficulty\/silent defects in interpreting it. But it has at most 52 significant bits, so a signed 64-bit integer or double-precision float type are safe for storing this identifier.
  , messageMigrateToChatId :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | new_chat_members: *Optional*. New members that were added to the group or supergroup and information about them (the bot itself may be one of these members)
  , messageNewChatMembers :: (GHC.Maybe.Maybe ([User]))
  -- | new_chat_photo: *Optional*. A chat photo was change to this value
  , messageNewChatPhoto :: (GHC.Maybe.Maybe ([PhotoSize]))
  -- | new_chat_title: *Optional*. A chat title was changed to this value
  , messageNewChatTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | passport_data: Contains information about Telegram Passport data shared with the bot by the user.
  , messagePassportData :: (GHC.Maybe.Maybe PassportData)
  -- | photo: *Optional*. Message is a photo, available sizes of the photo
  , messagePhoto :: (GHC.Maybe.Maybe ([PhotoSize]))
  -- | pinned_message: This object represents a message.
  , messagePinnedMessage :: (GHC.Maybe.Maybe Message)
  -- | poll: This object contains information about a poll.
  , messagePoll :: (GHC.Maybe.Maybe Poll)
  -- | proximity_alert_triggered: This object represents the content of a service message, sent whenever a user in the chat triggers a proximity alert set by another user.
  , messageProximityAlertTriggered :: (GHC.Maybe.Maybe ProximityAlertTriggered)
  -- | reply_markup: This object represents an [inline keyboard](https:\/\/core.telegram.org\/bots\#inline-keyboards-and-on-the-fly-updating) that appears right next to the message it belongs to.
  , messageReplyMarkup :: (GHC.Maybe.Maybe InlineKeyboardMarkup)
  -- | reply_to_message: This object represents a message.
  , messageReplyToMessage :: (GHC.Maybe.Maybe Message)
  -- | sender_chat: This object represents a chat.
  , messageSenderChat :: (GHC.Maybe.Maybe Chat)
  -- | sticker: This object represents a sticker.
  , messageSticker :: (GHC.Maybe.Maybe Sticker)
  -- | successful_payment: This object contains basic information about a successful payment.
  , messageSuccessfulPayment :: (GHC.Maybe.Maybe SuccessfulPayment)
  -- | supergroup_chat_created: *Optional*. Service message: the supergroup has been created. This field can\'t be received in a message coming through updates, because bot can\'t be a member of a supergroup when it is created. It can only be found in reply\\_to\\_message if someone replies to a very first message in a directly created supergroup.
  , messageSupergroupChatCreated :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | text: *Optional*. For text messages, the actual UTF-8 text of the message, 0-4096 characters
  -- 
  -- Constraints:
  -- 
  -- * Maximum length of 4096
  -- * Minimum length of 0
  , messageText :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | venue: This object represents a venue.
  , messageVenue :: (GHC.Maybe.Maybe Venue)
  -- | via_bot: This object represents a Telegram user or bot.
  , messageViaBot :: (GHC.Maybe.Maybe User)
  -- | video: This object represents a video file.
  , messageVideo :: (GHC.Maybe.Maybe Video)
  -- | video_note: This object represents a [video message](https:\/\/telegram.org\/blog\/video-messages-and-telescope) (available in Telegram apps as of [v.4.0](https:\/\/telegram.org\/blog\/video-messages-and-telescope)).
  , messageVideoNote :: (GHC.Maybe.Maybe VideoNote)
  -- | voice: This object represents a voice note.
  , messageVoice :: (GHC.Maybe.Maybe Voice)
  -- | voice_chat_ended: This object represents a service message about a voice chat ended in the chat.
  , messageVoiceChatEnded :: (GHC.Maybe.Maybe VoiceChatEnded)
  -- | voice_chat_participants_invited: This object represents a service message about new members invited to a voice chat.
  , messageVoiceChatParticipantsInvited :: (GHC.Maybe.Maybe VoiceChatParticipantsInvited)
  -- | voice_chat_scheduled: This object represents a service message about a voice chat scheduled in the chat.
  , messageVoiceChatScheduled :: (GHC.Maybe.Maybe VoiceChatScheduled)
  -- | voice_chat_started: This object represents a service message about a voice chat started in the chat. Currently holds no information.
  , messageVoiceChatStarted :: (GHC.Maybe.Maybe VoiceChatStarted)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON Message
    where toJSON obj = Data.Aeson.Types.Internal.object ("animation" Data.Aeson.Types.ToJSON..= messageAnimation obj : "audio" Data.Aeson.Types.ToJSON..= messageAudio obj : "author_signature" Data.Aeson.Types.ToJSON..= messageAuthorSignature obj : "caption" Data.Aeson.Types.ToJSON..= messageCaption obj : "caption_entities" Data.Aeson.Types.ToJSON..= messageCaptionEntities obj : "channel_chat_created" Data.Aeson.Types.ToJSON..= messageChannelChatCreated obj : "chat" Data.Aeson.Types.ToJSON..= messageChat obj : "connected_website" Data.Aeson.Types.ToJSON..= messageConnectedWebsite obj : "contact" Data.Aeson.Types.ToJSON..= messageContact obj : "date" Data.Aeson.Types.ToJSON..= messageDate obj : "delete_chat_photo" Data.Aeson.Types.ToJSON..= messageDeleteChatPhoto obj : "dice" Data.Aeson.Types.ToJSON..= messageDice obj : "document" Data.Aeson.Types.ToJSON..= messageDocument obj : "edit_date" Data.Aeson.Types.ToJSON..= messageEditDate obj : "entities" Data.Aeson.Types.ToJSON..= messageEntities obj : "forward_date" Data.Aeson.Types.ToJSON..= messageForwardDate obj : "forward_from" Data.Aeson.Types.ToJSON..= messageForwardFrom obj : "forward_from_chat" Data.Aeson.Types.ToJSON..= messageForwardFromChat obj : "forward_from_message_id" Data.Aeson.Types.ToJSON..= messageForwardFromMessageId obj : "forward_sender_name" Data.Aeson.Types.ToJSON..= messageForwardSenderName obj : "forward_signature" Data.Aeson.Types.ToJSON..= messageForwardSignature obj : "from" Data.Aeson.Types.ToJSON..= messageFrom obj : "game" Data.Aeson.Types.ToJSON..= messageGame obj : "group_chat_created" Data.Aeson.Types.ToJSON..= messageGroupChatCreated obj : "has_protected_content" Data.Aeson.Types.ToJSON..= messageHasProtectedContent obj : "invoice" Data.Aeson.Types.ToJSON..= messageInvoice obj : "is_automatic_forward" Data.Aeson.Types.ToJSON..= messageIsAutomaticForward obj : "left_chat_member" Data.Aeson.Types.ToJSON..= messageLeftChatMember obj : "location" Data.Aeson.Types.ToJSON..= messageLocation obj : "media_group_id" Data.Aeson.Types.ToJSON..= messageMediaGroupId obj : "message_auto_delete_timer_changed" Data.Aeson.Types.ToJSON..= messageMessageAutoDeleteTimerChanged obj : "message_id" Data.Aeson.Types.ToJSON..= messageMessageId obj : "migrate_from_chat_id" Data.Aeson.Types.ToJSON..= messageMigrateFromChatId obj : "migrate_to_chat_id" Data.Aeson.Types.ToJSON..= messageMigrateToChatId obj : "new_chat_members" Data.Aeson.Types.ToJSON..= messageNewChatMembers obj : "new_chat_photo" Data.Aeson.Types.ToJSON..= messageNewChatPhoto obj : "new_chat_title" Data.Aeson.Types.ToJSON..= messageNewChatTitle obj : "passport_data" Data.Aeson.Types.ToJSON..= messagePassportData obj : "photo" Data.Aeson.Types.ToJSON..= messagePhoto obj : "pinned_message" Data.Aeson.Types.ToJSON..= messagePinnedMessage obj : "poll" Data.Aeson.Types.ToJSON..= messagePoll obj : "proximity_alert_triggered" Data.Aeson.Types.ToJSON..= messageProximityAlertTriggered obj : "reply_markup" Data.Aeson.Types.ToJSON..= messageReplyMarkup obj : "reply_to_message" Data.Aeson.Types.ToJSON..= messageReplyToMessage obj : "sender_chat" Data.Aeson.Types.ToJSON..= messageSenderChat obj : "sticker" Data.Aeson.Types.ToJSON..= messageSticker obj : "successful_payment" Data.Aeson.Types.ToJSON..= messageSuccessfulPayment obj : "supergroup_chat_created" Data.Aeson.Types.ToJSON..= messageSupergroupChatCreated obj : "text" Data.Aeson.Types.ToJSON..= messageText obj : "venue" Data.Aeson.Types.ToJSON..= messageVenue obj : "via_bot" Data.Aeson.Types.ToJSON..= messageViaBot obj : "video" Data.Aeson.Types.ToJSON..= messageVideo obj : "video_note" Data.Aeson.Types.ToJSON..= messageVideoNote obj : "voice" Data.Aeson.Types.ToJSON..= messageVoice obj : "voice_chat_ended" Data.Aeson.Types.ToJSON..= messageVoiceChatEnded obj : "voice_chat_participants_invited" Data.Aeson.Types.ToJSON..= messageVoiceChatParticipantsInvited obj : "voice_chat_scheduled" Data.Aeson.Types.ToJSON..= messageVoiceChatScheduled obj : "voice_chat_started" Data.Aeson.Types.ToJSON..= messageVoiceChatStarted obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("animation" Data.Aeson.Types.ToJSON..= messageAnimation obj) GHC.Base.<> (("audio" Data.Aeson.Types.ToJSON..= messageAudio obj) GHC.Base.<> (("author_signature" Data.Aeson.Types.ToJSON..= messageAuthorSignature obj) GHC.Base.<> (("caption" Data.Aeson.Types.ToJSON..= messageCaption obj) GHC.Base.<> (("caption_entities" Data.Aeson.Types.ToJSON..= messageCaptionEntities obj) GHC.Base.<> (("channel_chat_created" Data.Aeson.Types.ToJSON..= messageChannelChatCreated obj) GHC.Base.<> (("chat" Data.Aeson.Types.ToJSON..= messageChat obj) GHC.Base.<> (("connected_website" Data.Aeson.Types.ToJSON..= messageConnectedWebsite obj) GHC.Base.<> (("contact" Data.Aeson.Types.ToJSON..= messageContact obj) GHC.Base.<> (("date" Data.Aeson.Types.ToJSON..= messageDate obj) GHC.Base.<> (("delete_chat_photo" Data.Aeson.Types.ToJSON..= messageDeleteChatPhoto obj) GHC.Base.<> (("dice" Data.Aeson.Types.ToJSON..= messageDice obj) GHC.Base.<> (("document" Data.Aeson.Types.ToJSON..= messageDocument obj) GHC.Base.<> (("edit_date" Data.Aeson.Types.ToJSON..= messageEditDate obj) GHC.Base.<> (("entities" Data.Aeson.Types.ToJSON..= messageEntities obj) GHC.Base.<> (("forward_date" Data.Aeson.Types.ToJSON..= messageForwardDate obj) GHC.Base.<> (("forward_from" Data.Aeson.Types.ToJSON..= messageForwardFrom obj) GHC.Base.<> (("forward_from_chat" Data.Aeson.Types.ToJSON..= messageForwardFromChat obj) GHC.Base.<> (("forward_from_message_id" Data.Aeson.Types.ToJSON..= messageForwardFromMessageId obj) GHC.Base.<> (("forward_sender_name" Data.Aeson.Types.ToJSON..= messageForwardSenderName obj) GHC.Base.<> (("forward_signature" Data.Aeson.Types.ToJSON..= messageForwardSignature obj) GHC.Base.<> (("from" Data.Aeson.Types.ToJSON..= messageFrom obj) GHC.Base.<> (("game" Data.Aeson.Types.ToJSON..= messageGame obj) GHC.Base.<> (("group_chat_created" Data.Aeson.Types.ToJSON..= messageGroupChatCreated obj) GHC.Base.<> (("has_protected_content" Data.Aeson.Types.ToJSON..= messageHasProtectedContent obj) GHC.Base.<> (("invoice" Data.Aeson.Types.ToJSON..= messageInvoice obj) GHC.Base.<> (("is_automatic_forward" Data.Aeson.Types.ToJSON..= messageIsAutomaticForward obj) GHC.Base.<> (("left_chat_member" Data.Aeson.Types.ToJSON..= messageLeftChatMember obj) GHC.Base.<> (("location" Data.Aeson.Types.ToJSON..= messageLocation obj) GHC.Base.<> (("media_group_id" Data.Aeson.Types.ToJSON..= messageMediaGroupId obj) GHC.Base.<> (("message_auto_delete_timer_changed" Data.Aeson.Types.ToJSON..= messageMessageAutoDeleteTimerChanged obj) GHC.Base.<> (("message_id" Data.Aeson.Types.ToJSON..= messageMessageId obj) GHC.Base.<> (("migrate_from_chat_id" Data.Aeson.Types.ToJSON..= messageMigrateFromChatId obj) GHC.Base.<> (("migrate_to_chat_id" Data.Aeson.Types.ToJSON..= messageMigrateToChatId obj) GHC.Base.<> (("new_chat_members" Data.Aeson.Types.ToJSON..= messageNewChatMembers obj) GHC.Base.<> (("new_chat_photo" Data.Aeson.Types.ToJSON..= messageNewChatPhoto obj) GHC.Base.<> (("new_chat_title" Data.Aeson.Types.ToJSON..= messageNewChatTitle obj) GHC.Base.<> (("passport_data" Data.Aeson.Types.ToJSON..= messagePassportData obj) GHC.Base.<> (("photo" Data.Aeson.Types.ToJSON..= messagePhoto obj) GHC.Base.<> (("pinned_message" Data.Aeson.Types.ToJSON..= messagePinnedMessage obj) GHC.Base.<> (("poll" Data.Aeson.Types.ToJSON..= messagePoll obj) GHC.Base.<> (("proximity_alert_triggered" Data.Aeson.Types.ToJSON..= messageProximityAlertTriggered obj) GHC.Base.<> (("reply_markup" Data.Aeson.Types.ToJSON..= messageReplyMarkup obj) GHC.Base.<> (("reply_to_message" Data.Aeson.Types.ToJSON..= messageReplyToMessage obj) GHC.Base.<> (("sender_chat" Data.Aeson.Types.ToJSON..= messageSenderChat obj) GHC.Base.<> (("sticker" Data.Aeson.Types.ToJSON..= messageSticker obj) GHC.Base.<> (("successful_payment" Data.Aeson.Types.ToJSON..= messageSuccessfulPayment obj) GHC.Base.<> (("supergroup_chat_created" Data.Aeson.Types.ToJSON..= messageSupergroupChatCreated obj) GHC.Base.<> (("text" Data.Aeson.Types.ToJSON..= messageText obj) GHC.Base.<> (("venue" Data.Aeson.Types.ToJSON..= messageVenue obj) GHC.Base.<> (("via_bot" Data.Aeson.Types.ToJSON..= messageViaBot obj) GHC.Base.<> (("video" Data.Aeson.Types.ToJSON..= messageVideo obj) GHC.Base.<> (("video_note" Data.Aeson.Types.ToJSON..= messageVideoNote obj) GHC.Base.<> (("voice" Data.Aeson.Types.ToJSON..= messageVoice obj) GHC.Base.<> (("voice_chat_ended" Data.Aeson.Types.ToJSON..= messageVoiceChatEnded obj) GHC.Base.<> (("voice_chat_participants_invited" Data.Aeson.Types.ToJSON..= messageVoiceChatParticipantsInvited obj) GHC.Base.<> (("voice_chat_scheduled" Data.Aeson.Types.ToJSON..= messageVoiceChatScheduled obj) GHC.Base.<> ("voice_chat_started" Data.Aeson.Types.ToJSON..= messageVoiceChatStarted obj))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON Message
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "Message" (\obj -> (((((((((((((((((((((((((((((((((((((((((((((((((((((((((GHC.Base.pure Message GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "animation")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "audio")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "author_signature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "caption_entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "channel_chat_created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "chat")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "connected_website")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "contact")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "delete_chat_photo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "dice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "document")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "edit_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "entities")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "forward_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "forward_from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "forward_from_chat")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "forward_from_message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "forward_sender_name")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "forward_signature")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "from")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "game")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "group_chat_created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "has_protected_content")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "invoice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_automatic_forward")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "left_chat_member")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "location")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "media_group_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "message_auto_delete_timer_changed")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..: "message_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "migrate_from_chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "migrate_to_chat_id")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "new_chat_members")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "new_chat_photo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "new_chat_title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "passport_data")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "photo")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "pinned_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "poll")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "proximity_alert_triggered")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_markup")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "reply_to_message")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sender_chat")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "sticker")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "successful_payment")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "supergroup_chat_created")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "text")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "venue")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "via_bot")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "video_note")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_chat_ended")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_chat_participants_invited")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_chat_scheduled")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "voice_chat_started"))
-- | Create a new 'Message' with all required fields.
mkMessage :: Chat -- ^ 'messageChat'
  -> GHC.Types.Int -- ^ 'messageDate'
  -> GHC.Types.Int -- ^ 'messageMessageId'
  -> Message
mkMessage messageChat messageDate messageMessageId = Message{messageAnimation = GHC.Maybe.Nothing,
                                                             messageAudio = GHC.Maybe.Nothing,
                                                             messageAuthorSignature = GHC.Maybe.Nothing,
                                                             messageCaption = GHC.Maybe.Nothing,
                                                             messageCaptionEntities = GHC.Maybe.Nothing,
                                                             messageChannelChatCreated = GHC.Maybe.Nothing,
                                                             messageChat = messageChat,
                                                             messageConnectedWebsite = GHC.Maybe.Nothing,
                                                             messageContact = GHC.Maybe.Nothing,
                                                             messageDate = messageDate,
                                                             messageDeleteChatPhoto = GHC.Maybe.Nothing,
                                                             messageDice = GHC.Maybe.Nothing,
                                                             messageDocument = GHC.Maybe.Nothing,
                                                             messageEditDate = GHC.Maybe.Nothing,
                                                             messageEntities = GHC.Maybe.Nothing,
                                                             messageForwardDate = GHC.Maybe.Nothing,
                                                             messageForwardFrom = GHC.Maybe.Nothing,
                                                             messageForwardFromChat = GHC.Maybe.Nothing,
                                                             messageForwardFromMessageId = GHC.Maybe.Nothing,
                                                             messageForwardSenderName = GHC.Maybe.Nothing,
                                                             messageForwardSignature = GHC.Maybe.Nothing,
                                                             messageFrom = GHC.Maybe.Nothing,
                                                             messageGame = GHC.Maybe.Nothing,
                                                             messageGroupChatCreated = GHC.Maybe.Nothing,
                                                             messageHasProtectedContent = GHC.Maybe.Nothing,
                                                             messageInvoice = GHC.Maybe.Nothing,
                                                             messageIsAutomaticForward = GHC.Maybe.Nothing,
                                                             messageLeftChatMember = GHC.Maybe.Nothing,
                                                             messageLocation = GHC.Maybe.Nothing,
                                                             messageMediaGroupId = GHC.Maybe.Nothing,
                                                             messageMessageAutoDeleteTimerChanged = GHC.Maybe.Nothing,
                                                             messageMessageId = messageMessageId,
                                                             messageMigrateFromChatId = GHC.Maybe.Nothing,
                                                             messageMigrateToChatId = GHC.Maybe.Nothing,
                                                             messageNewChatMembers = GHC.Maybe.Nothing,
                                                             messageNewChatPhoto = GHC.Maybe.Nothing,
                                                             messageNewChatTitle = GHC.Maybe.Nothing,
                                                             messagePassportData = GHC.Maybe.Nothing,
                                                             messagePhoto = GHC.Maybe.Nothing,
                                                             messagePinnedMessage = GHC.Maybe.Nothing,
                                                             messagePoll = GHC.Maybe.Nothing,
                                                             messageProximityAlertTriggered = GHC.Maybe.Nothing,
                                                             messageReplyMarkup = GHC.Maybe.Nothing,
                                                             messageReplyToMessage = GHC.Maybe.Nothing,
                                                             messageSenderChat = GHC.Maybe.Nothing,
                                                             messageSticker = GHC.Maybe.Nothing,
                                                             messageSuccessfulPayment = GHC.Maybe.Nothing,
                                                             messageSupergroupChatCreated = GHC.Maybe.Nothing,
                                                             messageText = GHC.Maybe.Nothing,
                                                             messageVenue = GHC.Maybe.Nothing,
                                                             messageViaBot = GHC.Maybe.Nothing,
                                                             messageVideo = GHC.Maybe.Nothing,
                                                             messageVideoNote = GHC.Maybe.Nothing,
                                                             messageVoice = GHC.Maybe.Nothing,
                                                             messageVoiceChatEnded = GHC.Maybe.Nothing,
                                                             messageVoiceChatParticipantsInvited = GHC.Maybe.Nothing,
                                                             messageVoiceChatScheduled = GHC.Maybe.Nothing,
                                                             messageVoiceChatStarted = GHC.Maybe.Nothing}
