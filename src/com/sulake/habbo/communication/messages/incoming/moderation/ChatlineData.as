package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2809:int;
      
      private var var_2807:int;
      
      private var var_2810:int;
      
      private var var_2808:String;
      
      private var var_2102:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2809 = param1.readInteger();
         this.var_2807 = param1.readInteger();
         this.var_2810 = param1.readInteger();
         this.var_2808 = param1.readString();
         this.var_2102 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2809;
      }
      
      public function get minute() : int
      {
         return this.var_2807;
      }
      
      public function get chatterId() : int
      {
         return this.var_2810;
      }
      
      public function get chatterName() : String
      {
         return this.var_2808;
      }
      
      public function get msg() : String
      {
         return this.var_2102;
      }
   }
}
