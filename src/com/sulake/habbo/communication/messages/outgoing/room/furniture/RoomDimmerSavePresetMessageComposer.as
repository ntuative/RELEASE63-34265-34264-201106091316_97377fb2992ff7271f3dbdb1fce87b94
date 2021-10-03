package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2410:int;
      
      private var var_2408:int;
      
      private var var_2711:String;
      
      private var var_2709:int;
      
      private var var_2710:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_2410 = param1;
         this.var_2408 = param2;
         this.var_2711 = param3;
         this.var_2709 = param4;
         this.var_2710 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2410,this.var_2408,this.var_2711,this.var_2709,int(this.var_2710)];
      }
      
      public function dispose() : void
      {
      }
   }
}
