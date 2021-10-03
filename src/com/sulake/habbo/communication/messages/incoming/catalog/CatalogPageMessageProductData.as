package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_62:String = "i";
      
      public static const const_77:String = "s";
      
      public static const const_187:String = "e";
       
      
      private var var_1615:String;
      
      private var var_2873:int;
      
      private var var_1077:String;
      
      private var var_1614:int;
      
      private var var_2066:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1615 = param1.readString();
         this.var_2873 = param1.readInteger();
         this.var_1077 = param1.readString();
         this.var_1614 = param1.readInteger();
         this.var_2066 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1615;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2873;
      }
      
      public function get extraParam() : String
      {
         return this.var_1077;
      }
      
      public function get productCount() : int
      {
         return this.var_1614;
      }
      
      public function get expiration() : int
      {
         return this.var_2066;
      }
   }
}
