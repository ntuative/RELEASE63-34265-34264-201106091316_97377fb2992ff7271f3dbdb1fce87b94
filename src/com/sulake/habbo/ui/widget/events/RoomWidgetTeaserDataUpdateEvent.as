package com.sulake.habbo.ui.widget.events
{
   public class RoomWidgetTeaserDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_598:String = "RWTDUE_TEASER_DATA";
      
      public static const const_925:String = "RWTDUE_GIFT_DATA";
      
      public static const const_977:String = "RWTDUE_GIFT_RECEIVED";
       
      
      private var var_232:int;
      
      private var _data:String;
      
      private var var_425:int;
      
      private var var_190:String;
      
      private var var_2486:String;
      
      private var var_2593:Boolean;
      
      private var var_1469:int = 0;
      
      private var var_2592:String;
      
      public function RoomWidgetTeaserDataUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function get objectId() : int
      {
         return this.var_232;
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function get status() : int
      {
         return this.var_425;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2486;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2593;
      }
      
      public function get method_1() : String
      {
         return this.var_2592;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1469;
      }
      
      public function set status(param1:int) : void
      {
         this.var_425 = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2486 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2593 = param1;
      }
      
      public function set method_1(param1:String) : void
      {
         this.var_2592 = param1;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_232 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_190;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_190 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1469 = param1;
      }
   }
}
