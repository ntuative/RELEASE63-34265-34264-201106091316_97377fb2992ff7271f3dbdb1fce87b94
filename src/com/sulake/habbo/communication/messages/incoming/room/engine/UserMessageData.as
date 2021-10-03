package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1305:String = "M";
      
      public static const const_1918:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_441:int = 0;
      
      private var _name:String = "";
      
      private var var_1679:int = 0;
      
      private var var_984:String = "";
      
      private var _figure:String = "";
      
      private var var_2697:String = "";
      
      private var var_2435:int;
      
      private var var_2427:int = 0;
      
      private var var_2696:String = "";
      
      private var var_2699:int = 0;
      
      private var var_2426:int = 0;
      
      private var var_2698:String = "";
      
      private var var_200:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_200)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1679;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_1679 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_984;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_200)
         {
            this.var_984 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_200)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2697;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_200)
         {
            this.var_2697 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2435;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_2435 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2427;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_2427 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2696;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_200)
         {
            this.var_2696 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2699;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_2699 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2426;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_200)
         {
            this.var_2426 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2698;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_200)
         {
            this.var_2698 = param1;
         }
      }
   }
}
