package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1689:Boolean;
      
      private var var_2228:int;
      
      private var var_2226:String;
      
      private var var_363:int;
      
      private var var_2227:int;
      
      private var var_1838:String;
      
      private var var_2225:String;
      
      private var var_2224:String;
      
      private var var_916:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_916 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1689 = false;
            return;
         }
         this.var_1689 = true;
         this.var_2228 = int(_loc2_);
         this.var_2226 = param1.readString();
         this.var_363 = int(param1.readString());
         this.var_2227 = param1.readInteger();
         this.var_1838 = param1.readString();
         this.var_2225 = param1.readString();
         this.var_2224 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_916.push(_loc5_);
            _loc4_++;
         }
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
      
      public function get ownerAvatarId() : int
      {
         return this.var_2228;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2226;
      }
      
      public function get flatId() : int
      {
         return this.var_363;
      }
      
      public function get eventType() : int
      {
         return this.var_2227;
      }
      
      public function get eventName() : String
      {
         return this.var_1838;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2225;
      }
      
      public function get creationTime() : String
      {
         return this.var_2224;
      }
      
      public function get tags() : Array
      {
         return this.var_916;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1689;
      }
   }
}
