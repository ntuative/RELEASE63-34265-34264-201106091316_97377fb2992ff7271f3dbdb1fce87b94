package com.sulake.habbo.friendbar.view.tabs.tokens
{
   import com.sulake.habbo.friendbar.data.FriendNotification;
   import com.sulake.habbo.friendbar.data.IFriendEntity;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   
   public class QuestToken extends Token
   {
       
      
      public function QuestToken(param1:IFriendEntity, param2:FriendNotification, param3:Boolean, param4:IHabboLocalizationManager)
      {
         var _loc5_:* = null;
         super(param2);
         _loc5_ = "${quests." + _loc5_ + ".name}";
         prepare("${friendbar.notify.quest}",_loc5_,"message_piece_xml","ach_notification_icon_png","small_ach_notification_icon_png",param3);
      }
   }
}
