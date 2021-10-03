package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_1699:Boolean;
      
      private var _roomId:int;
      
      private var var_922:String;
      
      private var var_2419:int;
      
      private var var_2420:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1699 = param1.readBoolean();
         this._roomId = param1.readInteger();
         this.var_922 = param1.readString();
         this.var_2419 = param1.readInteger();
         this.var_2420 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return this.var_1699;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_922;
      }
      
      public function get enterHour() : int
      {
         return this.var_2419;
      }
      
      public function get enterMinute() : int
      {
         return this.var_2420;
      }
   }
}
