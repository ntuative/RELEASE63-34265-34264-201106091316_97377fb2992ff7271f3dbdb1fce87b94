package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1832:int;
      
      private var var_2534:int;
      
      private var var_742:int;
      
      private var var_539:Number;
      
      private var var_2535:Boolean;
      
      private var var_2533:int;
      
      private var var_1880:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_539);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2534 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2533 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2535 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_742;
         if(this.var_742 == 1)
         {
            this.var_539 = param1;
            this.var_1832 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_742);
            this.var_539 = this.var_539 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2535 && param3 - this.var_1832 >= this.var_2534)
         {
            this.var_742 = 0;
            if(this.var_1880 < this.var_2533)
            {
               param2.trackGoogle("performance","averageFramerate",this.frameRate);
               ++this.var_1880;
               this.var_1832 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
