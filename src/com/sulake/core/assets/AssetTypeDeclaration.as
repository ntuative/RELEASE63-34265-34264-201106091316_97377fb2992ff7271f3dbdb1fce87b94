package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2727:String;
      
      private var var_2728:Class;
      
      private var var_2726:Class;
      
      private var var_1980:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2727 = param1;
         this.var_2728 = param2;
         this.var_2726 = param3;
         if(rest == null)
         {
            this.var_1980 = new Array();
         }
         else
         {
            this.var_1980 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2727;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2728;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2726;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1980;
      }
   }
}
