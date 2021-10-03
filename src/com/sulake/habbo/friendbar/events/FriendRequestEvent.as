package com.sulake.habbo.friendbar.events
{
   import flash.events.Event;
   
   public class FriendRequestEvent extends Event
   {
      
      public static const const_932:String = "FBE_REQUESTS";
       
      
      public function FriendRequestEvent()
      {
         super(const_932,false,false);
      }
   }
}
