package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2495:int;
      
      private var var_1648:String;
      
      private var _objId:int;
      
      private var var_1748:int;
      
      private var _category:int;
      
      private var var_2199:String;
      
      private var var_2647:Boolean;
      
      private var var_2644:Boolean;
      
      private var var_2645:Boolean;
      
      private var var_2416:Boolean;
      
      private var var_2646:int;
      
      private var var_1414:int;
      
      private var var_2048:String = "";
      
      private var var_1915:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2495 = param1;
         this.var_1648 = param2;
         this._objId = param3;
         this.var_1748 = param4;
         this._category = param5;
         this.var_2199 = param6;
         this.var_2647 = param7;
         this.var_2644 = param8;
         this.var_2645 = param9;
         this.var_2416 = param10;
         this.var_2646 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_2048 = param1;
         this.var_1414 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2495;
      }
      
      public function get itemType() : String
      {
         return this.var_1648;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1748;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2199;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2647;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2644;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2645;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2416;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2646;
      }
      
      public function get slotId() : String
      {
         return this.var_2048;
      }
      
      public function get songId() : int
      {
         return this.var_1915;
      }
      
      public function get extra() : int
      {
         return this.var_1414;
      }
   }
}
