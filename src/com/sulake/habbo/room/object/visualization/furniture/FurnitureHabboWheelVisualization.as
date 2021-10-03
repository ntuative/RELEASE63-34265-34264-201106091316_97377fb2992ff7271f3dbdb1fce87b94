package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1055:int = 10;
      
      private static const const_685:int = 20;
      
      private static const const_1468:int = 31;
      
      private static const const_1469:int = 32;
       
      
      private var var_328:Array;
      
      private var var_787:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_328 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
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
         if(param1 > 0 && param1 <= const_1055)
         {
            if(this.var_787)
            {
               this.var_787 = false;
               this.var_328 = new Array();
               this.var_328.push(const_1055 + param1);
               this.var_328.push(const_685 + param1);
               this.var_328.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
