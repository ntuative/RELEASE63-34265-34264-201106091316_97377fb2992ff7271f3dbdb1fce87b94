package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1704:String = "";
      
      private var var_2020:String = "";
      
      private var var_2308:String = "";
      
      private var var_2652:Number = 0;
      
      private var var_2654:Number = 0;
      
      private var var_2343:Number = 0;
      
      private var var_2346:Number = 0;
      
      private var var_2653:Boolean = false;
      
      private var var_2655:Boolean = false;
      
      private var var_2656:Boolean = false;
      
      private var var_2657:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1704 = param2;
         this.var_2020 = param3;
         this.var_2308 = param4;
         this.var_2652 = param5;
         this.var_2654 = param6;
         this.var_2343 = param7;
         this.var_2346 = param8;
         this.var_2653 = param9;
         this.var_2655 = param10;
         this.var_2656 = param11;
         this.var_2657 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1704;
      }
      
      public function get canvasId() : String
      {
         return this.var_2020;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2308;
      }
      
      public function get screenX() : Number
      {
         return this.var_2652;
      }
      
      public function get screenY() : Number
      {
         return this.var_2654;
      }
      
      public function get localX() : Number
      {
         return this.var_2343;
      }
      
      public function get localY() : Number
      {
         return this.var_2346;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2653;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2655;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2656;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2657;
      }
   }
}
