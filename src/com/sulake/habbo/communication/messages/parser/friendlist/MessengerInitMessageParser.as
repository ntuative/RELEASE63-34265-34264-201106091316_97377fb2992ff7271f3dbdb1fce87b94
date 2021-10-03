package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2267:int;
      
      private var var_2265:int;
      
      private var var_2264:int;
      
      private var var_2266:int;
      
      private var var_114:Array;
      
      private var var_253:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_114 = new Array();
         this.var_253 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2267 = param1.readInteger();
         this.var_2265 = param1.readInteger();
         this.var_2264 = param1.readInteger();
         this.var_2266 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_114.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_253.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2267;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2265;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2264;
      }
      
      public function get categories() : Array
      {
         return this.var_114;
      }
      
      public function get friends() : Array
      {
         return this.var_253;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2266;
      }
   }
}
