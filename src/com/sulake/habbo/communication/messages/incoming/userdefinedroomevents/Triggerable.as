package com.sulake.habbo.communication.messages.incoming.userdefinedroomevents
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class Triggerable
   {
       
      
      private var var_2718:Boolean;
      
      private var _furniLimit:int;
      
      private var var_1978:Array;
      
      private var _id:int;
      
      private var var_2720:String;
      
      private var var_1554:Array;
      
      private var var_2719:int;
      
      private var var_1977:int;
      
      public function Triggerable(param1:IMessageDataWrapper)
      {
         var _loc5_:int = 0;
         this.var_1978 = new Array();
         this.var_1554 = new Array();
         super();
         this.var_2718 = param1.readBoolean();
         this._furniLimit = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc5_ = param1.readInteger();
            this.var_1978.push(_loc5_);
            _loc3_++;
         }
         this.var_2719 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2720 = param1.readString();
         var _loc4_:int = param1.readInteger();
         _loc3_ = 0;
         while(_loc3_ < _loc4_)
         {
            this.var_1554.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1977 = param1.readInteger();
      }
      
      public function get stuffTypeSelectionEnabled() : Boolean
      {
         return this.var_2718;
      }
      
      public function get stuffTypeSelectionCode() : int
      {
         return this.var_1977;
      }
      
      public function set stuffTypeSelectionCode(param1:int) : void
      {
         this.var_1977 = param1;
      }
      
      public function get furniLimit() : int
      {
         return this._furniLimit;
      }
      
      public function get stuffIds() : Array
      {
         return this.var_1978;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get stringParam() : String
      {
         return this.var_2720;
      }
      
      public function get intParams() : Array
      {
         return this.var_1554;
      }
      
      public function get code() : int
      {
         return 0;
      }
      
      public function get stuffTypeId() : int
      {
         return this.var_2719;
      }
      
      public function getBoolean(param1:int) : Boolean
      {
         return this.var_1554[param1] == 1;
      }
   }
}
