package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_640:int = 0;
      
      public static const const_230:int = 1;
      
      public static const const_136:int = 2;
      
      public static const const_874:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1799:String;
      
      private var var_2291:int;
      
      private var var_1432:int;
      
      private var var_2379:int;
      
      private var var_2826:int;
      
      private var var_916:Array;
      
      private var var_2385:Array;
      
      private var var_2825:int;
      
      private var var_2315:Boolean;
      
      private var var_2382:Boolean;
      
      private var var_2384:Boolean;
      
      private var var_2381:Boolean;
      
      private var var_2380:int;
      
      private var var_2383:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2315;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2315 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2382;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2382 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2384;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2384 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2381;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2381 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2380;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2380 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2383;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2383 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1799;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1799 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2291;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2291 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1432;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1432 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2379;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_2826;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_2826 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_916;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_916 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2385;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2385 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_2825;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_2825 = param1;
      }
   }
}
