package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetRoomObjectNameEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_653:String = "RWONE_TYPE";
       
      
      private var _userId:int;
      
      private var _category:int;
      
      private var _userName:String;
      
      private var var_2305:int;
      
      public function RoomWidgetRoomObjectNameEvent(param1:int, param2:int, param3:String, param4:int)
      {
         this._userId = param1;
         this._category = param2;
         this._userName = param3;
         this.var_2305 = param4;
         super(const_653,false,false);
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2305;
      }
   }
}
