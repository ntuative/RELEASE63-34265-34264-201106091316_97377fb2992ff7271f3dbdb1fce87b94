package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2671:int;
      
      private var var_1648:String;
      
      private var var_2845:int;
      
      private var var_2844:int;
      
      private var _category:int;
      
      private var var_2199:String;
      
      private var var_1414:int;
      
      private var var_2842:int;
      
      private var var_2846:int;
      
      private var var_2843:int;
      
      private var var_2848:int;
      
      private var var_2847:Boolean;
      
      private var var_3051:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2671 = param1;
         this.var_1648 = param2;
         this.var_2845 = param3;
         this.var_2844 = param4;
         this._category = param5;
         this.var_2199 = param6;
         this.var_1414 = param7;
         this.var_2842 = param8;
         this.var_2846 = param9;
         this.var_2843 = param10;
         this.var_2848 = param11;
         this.var_2847 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2671;
      }
      
      public function get itemType() : String
      {
         return this.var_1648;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2845;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2844;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2199;
      }
      
      public function get extra() : int
      {
         return this.var_1414;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2842;
      }
      
      public function get creationDay() : int
      {
         return this.var_2846;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2843;
      }
      
      public function get creationYear() : int
      {
         return this.var_2848;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2847;
      }
      
      public function get songID() : int
      {
         return this.var_1414;
      }
   }
}
