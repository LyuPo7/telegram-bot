-- CHANGE WITH CAUTION: This is a generated code file generated by https://github.com/Haskell-OpenAPI-Code-Generator/Haskell-OpenAPI-Client-Code-Generator.

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE MultiWayIf #-}

-- | Contains the types generated from the schema ChatMember
module StripeAPI.Types.ChatMember where

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
import {-# SOURCE #-} StripeAPI.Types.ChatMemberAdministrator
import {-# SOURCE #-} StripeAPI.Types.ChatMemberBanned
import {-# SOURCE #-} StripeAPI.Types.ChatMemberLeft
import {-# SOURCE #-} StripeAPI.Types.ChatMemberMember
import {-# SOURCE #-} StripeAPI.Types.ChatMemberOwner
import {-# SOURCE #-} StripeAPI.Types.ChatMemberRestricted
import {-# SOURCE #-} StripeAPI.Types.User

-- | Defines the object schema located at @components.schemas.ChatMember.anyOf@ in the specification.
-- 
-- This object contains information about one member of a chat. Currently, the following 6 types of chat members are supported:
data ChatMember = ChatMember {
  -- | can_add_web_page_previews: *True*, if the user is allowed to add web page previews to their messages
  chatMemberCanAddWebPagePreviews :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_be_edited: *True*, if the bot is allowed to edit administrator privileges of that user
  , chatMemberCanBeEdited :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_change_info: *True*, if the user is allowed to change the chat title, photo and other settings
  , chatMemberCanChangeInfo :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_delete_messages: *True*, if the administrator can delete messages of other users
  , chatMemberCanDeleteMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_edit_messages: *Optional*. *True*, if the administrator can edit messages of other users and can pin messages; channels only
  , chatMemberCanEditMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_invite_users: *True*, if the user is allowed to invite new users to the chat
  , chatMemberCanInviteUsers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_manage_chat: *True*, if the administrator can access the chat event log, chat statistics, message statistics in channels, see channel members, see anonymous administrators in supergroups and ignore slow mode. Implied by any other administrator privilege
  , chatMemberCanManageChat :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_manage_voice_chats: *True*, if the administrator can manage voice chats
  , chatMemberCanManageVoiceChats :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_pin_messages: *Optional*. *True*, if the user is allowed to pin messages; groups and supergroups only
  , chatMemberCanPinMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_post_messages: *Optional*. *True*, if the administrator can post in the channel; channels only
  , chatMemberCanPostMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_promote_members: *True*, if the administrator can add new administrators with a subset of their own privileges or demote administrators that he has promoted, directly or indirectly (promoted by administrators that were appointed by the user)
  , chatMemberCanPromoteMembers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_restrict_members: *True*, if the administrator can restrict, ban or unban chat members
  , chatMemberCanRestrictMembers :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_send_media_messages: *True*, if the user is allowed to send audios, documents, photos, videos, video notes and voice notes
  , chatMemberCanSendMediaMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_send_messages: *True*, if the user is allowed to send text messages, contacts, locations and venues
  , chatMemberCanSendMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_send_other_messages: *True*, if the user is allowed to send animations, games, stickers and use inline bots
  , chatMemberCanSendOtherMessages :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | can_send_polls: *True*, if the user is allowed to send polls
  , chatMemberCanSendPolls :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | custom_title: *Optional*. Custom title for this user
  , chatMemberCustomTitle :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | is_anonymous: *True*, if the user\'s presence in the chat is hidden
  , chatMemberIsAnonymous :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | is_member: *True*, if the user is a member of the chat at the moment of the request
  , chatMemberIsMember :: (GHC.Maybe.Maybe GHC.Types.Bool)
  -- | status: The member\'s status in the chat, always “creator”
  , chatMemberStatus :: (GHC.Maybe.Maybe Data.Text.Internal.Text)
  -- | until_date: Date when restrictions will be lifted for this user; unix time. If 0, then the user is restricted forever
  , chatMemberUntilDate :: (GHC.Maybe.Maybe GHC.Types.Int)
  -- | user: This object represents a Telegram user or bot.
  , chatMemberUser :: (GHC.Maybe.Maybe User)
  } deriving (GHC.Show.Show
  , GHC.Classes.Eq)
instance Data.Aeson.Types.ToJSON.ToJSON ChatMember
    where toJSON obj = Data.Aeson.Types.Internal.object ("can_add_web_page_previews" Data.Aeson.Types.ToJSON..= chatMemberCanAddWebPagePreviews obj : "can_be_edited" Data.Aeson.Types.ToJSON..= chatMemberCanBeEdited obj : "can_change_info" Data.Aeson.Types.ToJSON..= chatMemberCanChangeInfo obj : "can_delete_messages" Data.Aeson.Types.ToJSON..= chatMemberCanDeleteMessages obj : "can_edit_messages" Data.Aeson.Types.ToJSON..= chatMemberCanEditMessages obj : "can_invite_users" Data.Aeson.Types.ToJSON..= chatMemberCanInviteUsers obj : "can_manage_chat" Data.Aeson.Types.ToJSON..= chatMemberCanManageChat obj : "can_manage_voice_chats" Data.Aeson.Types.ToJSON..= chatMemberCanManageVoiceChats obj : "can_pin_messages" Data.Aeson.Types.ToJSON..= chatMemberCanPinMessages obj : "can_post_messages" Data.Aeson.Types.ToJSON..= chatMemberCanPostMessages obj : "can_promote_members" Data.Aeson.Types.ToJSON..= chatMemberCanPromoteMembers obj : "can_restrict_members" Data.Aeson.Types.ToJSON..= chatMemberCanRestrictMembers obj : "can_send_media_messages" Data.Aeson.Types.ToJSON..= chatMemberCanSendMediaMessages obj : "can_send_messages" Data.Aeson.Types.ToJSON..= chatMemberCanSendMessages obj : "can_send_other_messages" Data.Aeson.Types.ToJSON..= chatMemberCanSendOtherMessages obj : "can_send_polls" Data.Aeson.Types.ToJSON..= chatMemberCanSendPolls obj : "custom_title" Data.Aeson.Types.ToJSON..= chatMemberCustomTitle obj : "is_anonymous" Data.Aeson.Types.ToJSON..= chatMemberIsAnonymous obj : "is_member" Data.Aeson.Types.ToJSON..= chatMemberIsMember obj : "status" Data.Aeson.Types.ToJSON..= chatMemberStatus obj : "until_date" Data.Aeson.Types.ToJSON..= chatMemberUntilDate obj : "user" Data.Aeson.Types.ToJSON..= chatMemberUser obj : GHC.Base.mempty)
          toEncoding obj = Data.Aeson.Encoding.Internal.pairs (("can_add_web_page_previews" Data.Aeson.Types.ToJSON..= chatMemberCanAddWebPagePreviews obj) GHC.Base.<> (("can_be_edited" Data.Aeson.Types.ToJSON..= chatMemberCanBeEdited obj) GHC.Base.<> (("can_change_info" Data.Aeson.Types.ToJSON..= chatMemberCanChangeInfo obj) GHC.Base.<> (("can_delete_messages" Data.Aeson.Types.ToJSON..= chatMemberCanDeleteMessages obj) GHC.Base.<> (("can_edit_messages" Data.Aeson.Types.ToJSON..= chatMemberCanEditMessages obj) GHC.Base.<> (("can_invite_users" Data.Aeson.Types.ToJSON..= chatMemberCanInviteUsers obj) GHC.Base.<> (("can_manage_chat" Data.Aeson.Types.ToJSON..= chatMemberCanManageChat obj) GHC.Base.<> (("can_manage_voice_chats" Data.Aeson.Types.ToJSON..= chatMemberCanManageVoiceChats obj) GHC.Base.<> (("can_pin_messages" Data.Aeson.Types.ToJSON..= chatMemberCanPinMessages obj) GHC.Base.<> (("can_post_messages" Data.Aeson.Types.ToJSON..= chatMemberCanPostMessages obj) GHC.Base.<> (("can_promote_members" Data.Aeson.Types.ToJSON..= chatMemberCanPromoteMembers obj) GHC.Base.<> (("can_restrict_members" Data.Aeson.Types.ToJSON..= chatMemberCanRestrictMembers obj) GHC.Base.<> (("can_send_media_messages" Data.Aeson.Types.ToJSON..= chatMemberCanSendMediaMessages obj) GHC.Base.<> (("can_send_messages" Data.Aeson.Types.ToJSON..= chatMemberCanSendMessages obj) GHC.Base.<> (("can_send_other_messages" Data.Aeson.Types.ToJSON..= chatMemberCanSendOtherMessages obj) GHC.Base.<> (("can_send_polls" Data.Aeson.Types.ToJSON..= chatMemberCanSendPolls obj) GHC.Base.<> (("custom_title" Data.Aeson.Types.ToJSON..= chatMemberCustomTitle obj) GHC.Base.<> (("is_anonymous" Data.Aeson.Types.ToJSON..= chatMemberIsAnonymous obj) GHC.Base.<> (("is_member" Data.Aeson.Types.ToJSON..= chatMemberIsMember obj) GHC.Base.<> (("status" Data.Aeson.Types.ToJSON..= chatMemberStatus obj) GHC.Base.<> (("until_date" Data.Aeson.Types.ToJSON..= chatMemberUntilDate obj) GHC.Base.<> ("user" Data.Aeson.Types.ToJSON..= chatMemberUser obj))))))))))))))))))))))
instance Data.Aeson.Types.FromJSON.FromJSON ChatMember
    where parseJSON = Data.Aeson.Types.FromJSON.withObject "ChatMember" (\obj -> (((((((((((((((((((((GHC.Base.pure ChatMember GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_add_web_page_previews")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_be_edited")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_change_info")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_delete_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_edit_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_invite_users")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_manage_chat")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_manage_voice_chats")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_pin_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_post_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_promote_members")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_restrict_members")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_send_media_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_send_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_send_other_messages")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "can_send_polls")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "custom_title")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_anonymous")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "is_member")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "status")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "until_date")) GHC.Base.<*> (obj Data.Aeson.Types.FromJSON..:? "user"))
-- | Create a new 'ChatMember' with all required fields.
mkChatMember :: ChatMember
mkChatMember = ChatMember{chatMemberCanAddWebPagePreviews = GHC.Maybe.Nothing,
                          chatMemberCanBeEdited = GHC.Maybe.Nothing,
                          chatMemberCanChangeInfo = GHC.Maybe.Nothing,
                          chatMemberCanDeleteMessages = GHC.Maybe.Nothing,
                          chatMemberCanEditMessages = GHC.Maybe.Nothing,
                          chatMemberCanInviteUsers = GHC.Maybe.Nothing,
                          chatMemberCanManageChat = GHC.Maybe.Nothing,
                          chatMemberCanManageVoiceChats = GHC.Maybe.Nothing,
                          chatMemberCanPinMessages = GHC.Maybe.Nothing,
                          chatMemberCanPostMessages = GHC.Maybe.Nothing,
                          chatMemberCanPromoteMembers = GHC.Maybe.Nothing,
                          chatMemberCanRestrictMembers = GHC.Maybe.Nothing,
                          chatMemberCanSendMediaMessages = GHC.Maybe.Nothing,
                          chatMemberCanSendMessages = GHC.Maybe.Nothing,
                          chatMemberCanSendOtherMessages = GHC.Maybe.Nothing,
                          chatMemberCanSendPolls = GHC.Maybe.Nothing,
                          chatMemberCustomTitle = GHC.Maybe.Nothing,
                          chatMemberIsAnonymous = GHC.Maybe.Nothing,
                          chatMemberIsMember = GHC.Maybe.Nothing,
                          chatMemberStatus = GHC.Maybe.Nothing,
                          chatMemberUntilDate = GHC.Maybe.Nothing,
                          chatMemberUser = GHC.Maybe.Nothing}
