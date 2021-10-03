package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1156:int;
      
      private var var_2901:String;
      
      private var var_2900:int;
      
      private var var_2361:String;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1156 = param1.readInteger();
         this.var_2901 = param1.readString();
         this.var_2361 = param1.readString();
         this.var_2900 = this.var_1156;
      }
      
      public function get requestId() : int
      {
         return this.var_1156;
      }
      
      public function get requesterName() : String
      {
         return this.var_2901;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2900;
      }
      
      public function get figureString() : String
      {
         return this.var_2361;
      }
   }
}
