package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_441:int = 0;
      
      private var var_552:int = 0;
      
      private var var_661:int = 0;
      
      private var _type:int = 0;
      
      private var var_3039:String = "";
      
      private var var_1414:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2646:int = 0;
      
      private var var_2344:Boolean;
      
      private var var_2804:String = null;
      
      private var var_200:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_200 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_200)
         {
            this._x = param1;
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
      
      public function get dir() : int
      {
         return this.var_441;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_441 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_552;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_552 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_661;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_661 = param1;
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
      
      public function get staticClass() : String
      {
         return this.var_2804;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_200)
         {
            this.var_2804 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_1414;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_1414 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2646;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_2646 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2344;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2344 = param1;
      }
   }
}
