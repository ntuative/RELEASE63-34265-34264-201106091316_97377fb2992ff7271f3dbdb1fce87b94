package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_712;
         param1["bitmap"] = const_537;
         param1["border"] = const_984;
         param1["border_notify"] = const_1768;
         param1["bubble"] = const_838;
         param1["bubble_pointer_up"] = const_1157;
         param1["bubble_pointer_right"] = const_1176;
         param1["bubble_pointer_down"] = const_1168;
         param1["bubble_pointer_left"] = const_1357;
         param1["button"] = const_629;
         param1["button_thick"] = const_841;
         param1["button_icon"] = const_1789;
         param1["button_group_left"] = const_901;
         param1["button_group_center"] = const_905;
         param1["button_group_right"] = const_861;
         param1["canvas"] = const_770;
         param1["checkbox"] = const_797;
         param1["closebutton"] = const_1307;
         param1["container"] = const_385;
         param1["container_button"] = const_806;
         param1["display_object_wrapper"] = const_968;
         param1["dropmenu"] = const_529;
         param1["dropmenu_item"] = const_642;
         param1["frame"] = const_410;
         param1["frame_notify"] = const_1958;
         param1["header"] = const_710;
         param1["html"] = const_1302;
         param1["icon"] = const_1252;
         param1["itemgrid"] = const_1178;
         param1["itemgrid_horizontal"] = const_479;
         param1["itemgrid_vertical"] = const_777;
         param1["itemlist"] = const_1195;
         param1["itemlist_horizontal"] = const_420;
         param1["itemlist_vertical"] = const_438;
         param1["label"] = const_952;
         param1["maximizebox"] = const_1901;
         param1["menu"] = const_1874;
         param1["menu_item"] = const_1800;
         param1["submenu"] = const_1311;
         param1["minimizebox"] = const_1762;
         param1["notify"] = const_1734;
         param1["UnignoreUserMessageComposer"] = const_860;
         param1["password"] = const_736;
         param1["radiobutton"] = const_919;
         param1["region"] = const_447;
         param1["restorebox"] = const_1714;
         param1["scaler"] = const_490;
         param1["scaler_horizontal"] = const_1722;
         param1["scaler_vertical"] = const_1905;
         param1["scrollbar_horizontal"] = const_488;
         param1["scrollbar_vertical"] = const_931;
         param1["scrollbar_slider_button_up"] = const_1218;
         param1["scrollbar_slider_button_down"] = const_1314;
         param1["scrollbar_slider_button_left"] = const_1156;
         param1["scrollbar_slider_button_right"] = const_1224;
         param1["scrollbar_slider_bar_horizontal"] = const_1309;
         param1["scrollbar_slider_bar_vertical"] = const_1332;
         param1["scrollbar_slider_track_horizontal"] = const_1337;
         param1["scrollbar_slider_track_vertical"] = const_1279;
         param1["scrollable_itemlist"] = const_1967;
         param1["scrollable_itemlist_vertical"] = WINDOW_TYPE_SCROLLABLE_ITEMLIST_VERTICAL;
         param1["scrollable_itemlist_horizontal"] = const_1225;
         param1["selector"] = const_849;
         param1["selector_list"] = const_900;
         param1["submenu"] = const_1311;
         param1["tab_button"] = const_795;
         param1["tab_container_button"] = const_1260;
         param1["tab_context"] = const_431;
         param1["tab_content"] = const_1237;
         param1["tab_selector"] = const_953;
         param1["text"] = const_986;
         param1["input"] = const_810;
         param1["toolbar"] = const_1836;
         param1["tooltip"] = const_429;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
