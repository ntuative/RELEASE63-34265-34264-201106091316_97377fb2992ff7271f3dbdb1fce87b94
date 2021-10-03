package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_2091:int = 1;
      
      public static const const_2228:int = 2;
      
      public static const const_2205:int = 3;
      
      public static const const_2189:int = 4;
      
      public static const const_1675:int = 5;
      
      public static const const_2166:int = 6;
      
      public static const const_1802:int = 7;
      
      public static const const_1757:int = 8;
      
      public static const const_2119:int = 9;
      
      public static const const_1829:int = 10;
      
      public static const const_1801:int = 11;
      
      public static const const_1840:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1757:int;
      
      private var var_641:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1757 = param1.readInteger();
         this.var_641 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1757;
      }
      
      public function get info() : String
      {
         return this.var_641;
      }
   }
}
