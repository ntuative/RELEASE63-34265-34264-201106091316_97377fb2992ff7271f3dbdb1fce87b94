package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_363:int;
      
      private var var_866:Boolean;
      
      private var var_922:String;
      
      private var _ownerName:String;
      
      private var var_2291:int;
      
      private var var_2309:int;
      
      private var var_2312:int;
      
      private var var_1799:String;
      
      private var var_2313:int;
      
      private var var_2289:Boolean;
      
      private var var_748:int;
      
      private var var_1432:int;
      
      private var var_2310:String;
      
      private var var_916:Array;
      
      private var var_2314:RoomThumbnailData;
      
      private var var_2315:Boolean;
      
      private var var_2311:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_916 = new Array();
         super();
         this.var_363 = param1.readInteger();
         this.var_866 = param1.readBoolean();
         this.var_922 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2291 = param1.readInteger();
         this.var_2309 = param1.readInteger();
         this.var_2312 = param1.readInteger();
         this.var_1799 = param1.readString();
         this.var_2313 = param1.readInteger();
         this.var_2289 = param1.readBoolean();
         this.var_748 = param1.readInteger();
         this.var_1432 = param1.readInteger();
         this.var_2310 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_916.push(_loc4_);
            _loc3_++;
         }
         this.var_2314 = new RoomThumbnailData(param1);
         this.var_2315 = param1.readBoolean();
         this.var_2311 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_916 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_363;
      }
      
      public function get event() : Boolean
      {
         return this.var_866;
      }
      
      public function get roomName() : String
      {
         return this.var_922;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2291;
      }
      
      public function get userCount() : int
      {
         return this.var_2309;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2312;
      }
      
      public function get description() : String
      {
         return this.var_1799;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2313;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2289;
      }
      
      public function get score() : int
      {
         return this.var_748;
      }
      
      public function get categoryId() : int
      {
         return this.var_1432;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2310;
      }
      
      public function get tags() : Array
      {
         return this.var_916;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2314;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2315;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2311;
      }
   }
}
