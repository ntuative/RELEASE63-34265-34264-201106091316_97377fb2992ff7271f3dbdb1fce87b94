package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2145:int;
      
      private var var_2958:int;
      
      private var var_1533:int;
      
      private var var_2750:int;
      
      private var var_123:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2145 = param1.readInteger();
         this.var_2958 = param1.readInteger();
         this.var_1533 = param1.readInteger();
         this.var_2750 = param1.readInteger();
         this.var_123 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_2145);
      }
      
      public function get callId() : int
      {
         return this.var_2145;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2958;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1533;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2750;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_123;
      }
   }
}
