package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1226:int = 1;
      
      public static const const_715:int = 2;
      
      public static const const_943:int = 3;
      
      public static const const_1842:int = 4;
       
      
      private var _index:int;
      
      private var var_2880:String;
      
      private var var_2878:String;
      
      private var var_2877:Boolean;
      
      private var var_2876:String;
      
      private var var_1067:String;
      
      private var var_2879:int;
      
      private var var_2309:int;
      
      private var _type:int;
      
      private var var_2367:String;
      
      private var var_1075:GuestRoomData;
      
      private var var_1074:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2880 = param1.readString();
         this.var_2878 = param1.readString();
         this.var_2877 = param1.readInteger() == 1;
         this.var_2876 = param1.readString();
         this.var_1067 = param1.readString();
         this.var_2879 = param1.readInteger();
         this.var_2309 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1226)
         {
            this.var_2367 = param1.readString();
         }
         else if(this._type == const_943)
         {
            this.var_1074 = new PublicRoomData(param1);
         }
         else if(this._type == const_715)
         {
            this.var_1075 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1075 != null)
         {
            this.var_1075.dispose();
            this.var_1075 = null;
         }
         if(this.var_1074 != null)
         {
            this.var_1074.dispose();
            this.var_1074 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2880;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2878;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2877;
      }
      
      public function get picText() : String
      {
         return this.var_2876;
      }
      
      public function get picRef() : String
      {
         return this.var_1067;
      }
      
      public function get folderId() : int
      {
         return this.var_2879;
      }
      
      public function get tag() : String
      {
         return this.var_2367;
      }
      
      public function get userCount() : int
      {
         return this.var_2309;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1075;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1074;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1226)
         {
            return 0;
         }
         if(this.type == const_715)
         {
            return this.var_1075.maxUserCount;
         }
         if(this.type == const_943)
         {
            return this.var_1074.maxUsers;
         }
         return 0;
      }
   }
}
