package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_630:String = "RWUAM_WHISPER_USER";
      
      public static const const_618:String = "RWUAM_IGNORE_USER";
      
      public static const const_497:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_454:String = "RWUAM_KICK_USER";
      
      public static const const_619:String = "RWUAM_BAN_USER";
      
      public static const const_643:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_534:String = "RWUAM_RESPECT_USER";
      
      public static const const_623:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_625:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_621:String = "RWUAM_START_TRADING";
      
      public static const const_944:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_648:String = "RWUAM_KICK_BOT";
      
      public static const const_584:String = "RWUAM_REPORT";
      
      public static const const_548:String = "RWUAM_PICKUP_PET";
      
      public static const const_1743:String = "RWUAM_TRAIN_PET";
      
      public static const const_499:String = " RWUAM_RESPECT_PET";
      
      public static const const_453:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_480:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
