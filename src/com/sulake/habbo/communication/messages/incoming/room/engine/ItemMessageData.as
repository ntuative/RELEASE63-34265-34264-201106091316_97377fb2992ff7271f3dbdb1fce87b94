package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2345:Boolean = false;
      
      private var var_2347:int = 0;
      
      private var var_2348:int = 0;
      
      private var var_2343:int = 0;
      
      private var var_2346:int = 0;
      
      private var var_165:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_441:String = "";
      
      private var _type:int = 0;
      
      private var var_3039:String = "";
      
      private var var_1414:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_200:Boolean = false;
      
      private var var_2344:Boolean;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2345 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_200 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2345;
      }
      
      public function get wallX() : Number
      {
         return this.var_2347;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_200)
         {
            this.var_2347 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2348;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_200)
         {
            this.var_2348 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2343;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_200)
         {
            this.var_2343 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2346;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_200)
         {
            this.var_2346 = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_165;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_200)
         {
            this.var_165 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_166;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_200)
         {
            this.var_166 = param1;
         }
      }
      
      public function get dir() : String
      {
         return this.var_441;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_200)
         {
            this.var_441 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_200)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_200)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_200)
         {
            this._data = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2344;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         if(!this.var_200)
         {
            this.var_2344 = param1;
         }
      }
   }
}
