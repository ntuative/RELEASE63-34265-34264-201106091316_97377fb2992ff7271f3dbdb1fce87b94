package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1932:int;
      
      private var var_1344:int;
      
      private var var_2306:int;
      
      private var var_2307:int;
      
      private var var_2300:int;
      
      private var _energy:int;
      
      private var var_2304:int;
      
      private var _nutrition:int;
      
      private var var_2299:int;
      
      private var var_2303:int;
      
      private var _ownerName:String;
      
      private var var_2626:int;
      
      private var var_582:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1932;
      }
      
      public function get level() : int
      {
         return this.var_1344;
      }
      
      public function get levelMax() : int
      {
         return this.var_2306;
      }
      
      public function get experience() : int
      {
         return this.var_2307;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2300;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2304;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2299;
      }
      
      public function get ownerId() : int
      {
         return this.var_2303;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2626;
      }
      
      public function get age() : int
      {
         return this.var_582;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1932 = param1;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1344 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2306 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2307 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2300 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2304 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2299 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         this.var_2303 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2626 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_582 = param1;
      }
   }
}
