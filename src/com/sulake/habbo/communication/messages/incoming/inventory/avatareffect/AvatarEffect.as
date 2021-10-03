package com.sulake.habbo.communication.messages.incoming.inventory.avatareffect
{
   public class AvatarEffect
   {
       
      
      private var _type:int;
      
      private var var_1719:int;
      
      private var var_2692:int;
      
      private var var_2693:int;
      
      public function AvatarEffect()
      {
         super();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         this._type = param1;
      }
      
      public function get duration() : int
      {
         return this.var_1719;
      }
      
      public function set duration(param1:int) : void
      {
         this.var_1719 = param1;
      }
      
      public function get inactiveEffectsInInventory() : int
      {
         return this.var_2692;
      }
      
      public function set inactiveEffectsInInventory(param1:int) : void
      {
         this.var_2692 = param1;
      }
      
      public function get secondsLeftIfActive() : int
      {
         return this.var_2693;
      }
      
      public function set secondsLeftIfActive(param1:int) : void
      {
         this.var_2693 = param1;
      }
   }
}
