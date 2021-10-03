package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["UnignoreUserMessageComposer"] = const_191;
         param1["bound_to_parent_rect"] = const_101;
         param1["child_window"] = const_1365;
         param1["embedded_controller"] = const_1174;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_910;
         param1["mouse_dragging_target"] = const_266;
         param1["mouse_dragging_trigger"] = const_449;
         param1["mouse_scaling_target"] = const_365;
         param1["mouse_scaling_trigger"] = const_525;
         param1["horizontal_mouse_scaling_trigger"] = const_290;
         param1["vertical_mouse_scaling_trigger"] = const_259;
         param1["observe_parent_input_events"] = const_1208;
         param1["optimize_region_to_layout_size"] = const_491;
         param1["parent_window"] = const_1348;
         param1["relative_horizontal_scale_center"] = const_228;
         param1["relative_horizontal_scale_fixed"] = const_161;
         param1["relative_horizontal_scale_move"] = const_451;
         param1["relative_horizontal_scale_strech"] = const_450;
         param1["relative_scale_center"] = const_1265;
         param1["relative_scale_fixed"] = const_824;
         param1["relative_scale_move"] = const_1304;
         param1["relative_scale_strech"] = const_1216;
         param1["relative_vertical_scale_center"] = const_222;
         param1["relative_vertical_scale_fixed"] = const_154;
         param1["relative_vertical_scale_move"] = const_248;
         param1["relative_vertical_scale_strech"] = const_366;
         param1["on_resize_align_left"] = const_928;
         param1["on_resize_align_right"] = const_547;
         param1["on_resize_align_center"] = const_550;
         param1["on_resize_align_top"] = const_753;
         param1["on_resize_align_bottom"] = const_636;
         param1["on_resize_align_middle"] = const_528;
         param1["on_accommodate_align_left"] = const_1287;
         param1["on_accommodate_align_right"] = const_493;
         param1["on_accommodate_align_center"] = const_957;
         param1["on_accommodate_align_top"] = const_1276;
         param1["on_accommodate_align_bottom"] = const_510;
         param1["on_accommodate_align_middle"] = const_816;
         param1["route_input_events_to_parent"] = const_577;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1254;
         param1["scalable_with_mouse"] = const_1313;
         param1["reflect_horizontal_resize_to_parent"] = const_531;
         param1["reflect_vertical_resize_to_parent"] = const_553;
         param1["reflect_resize_to_parent"] = const_369;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1190;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
