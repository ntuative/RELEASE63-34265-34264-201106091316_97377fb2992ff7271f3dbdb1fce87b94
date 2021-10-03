package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1055:int = 20;
      
      private static const const_685:int = 10;
      
      private static const const_1468:int = 31;
      
      private static const const_1469:int = 32;
      
      private static const const_686:int = 30;
       
      
      private var var_328:Array;
      
      private var var_787:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_328 = new Array();
         super();
         super.setAnimation(const_686);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            if(!this.var_787)
            {
               this.var_787 = true;
               this.var_328 = new Array();
               this.var_328.push(const_1468);
               this.var_328.push(const_1469);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_685)
         {
            if(this.var_787)
            {
               this.var_787 = false;
               this.var_328 = new Array();
               if(direction == 2)
               {
                  this.var_328.push(const_1055 + 5 - param1);
                  this.var_328.push(const_685 + 5 - param1);
               }
               else
               {
                  this.var_328.push(const_1055 + param1);
                  this.var_328.push(const_685 + param1);
               }
               this.var_328.push(const_686);
               return;
            }
            super.setAnimation(const_686);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
         {
            if(this.var_328.length > 0)
            {
               super.setAnimation(this.var_328.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
