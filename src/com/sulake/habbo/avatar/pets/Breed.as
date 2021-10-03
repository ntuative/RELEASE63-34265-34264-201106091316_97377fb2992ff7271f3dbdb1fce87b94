package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var _id:int;
      
      private var var_2415:String = "";
      
      private var var_1069:String;
      
      private var var_1617:Boolean;
      
      private var var_2416:Boolean = true;
      
      private var var_2414:int;
      
      private var var_2413:String;
      
      public function Breed(param1:XML)
      {
         super(param1);
         this._id = parseInt(param1.@id);
         this.var_2414 = parseInt(param1.@pattern);
         this.var_1069 = String(param1.@gender);
         this.var_1617 = Boolean(parseInt(param1.@colorable));
         this.var_2415 = String(param1.@localizationKey);
         if(param1.@sellable && param1.@sellable == "0")
         {
            this.var_2416 = false;
         }
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get gender() : String
      {
         return this.var_1069;
      }
      
      public function get isColorable() : Boolean
      {
         return this.var_1617;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2416;
      }
      
      public function get patternId() : int
      {
         return this.var_2414;
      }
      
      public function get avatarFigureString() : String
      {
         return this.var_2413;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         this.var_2413 = param1;
      }
      
      public function get localizationKey() : String
      {
         return this.var_2415;
      }
   }
}
