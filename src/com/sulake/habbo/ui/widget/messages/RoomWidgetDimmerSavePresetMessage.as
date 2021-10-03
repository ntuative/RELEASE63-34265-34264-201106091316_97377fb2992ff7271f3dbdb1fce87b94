package com.sulake.habbo.ui.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_779:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2410:int;
      
      private var var_2408:int;
      
      private var _color:uint;
      
      private var var_1195:int;
      
      private var var_2409:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_779);
         this.var_2410 = param1;
         this.var_2408 = param2;
         this._color = param3;
         this.var_1195 = param4;
         this.var_2409 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2410;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2408;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1195;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2409;
      }
   }
}
