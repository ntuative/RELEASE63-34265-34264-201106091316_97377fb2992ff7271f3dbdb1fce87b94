package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_198:IWindowContainer;
      
      private var var_3016:int;
      
      private var var_370:RoomEventViewCtrl;
      
      private var var_372:Timer;
      
      private var var_146:RoomSettingsCtrl;
      
      private var var_271:RoomThumbnailCtrl;
      
      private var var_974:TagRenderer;
      
      private var var_371:IWindowContainer;
      
      private var var_369:IWindowContainer;
      
      private var var_632:IWindowContainer;
      
      private var var_1839:IWindowContainer;
      
      private var var_1836:IWindowContainer;
      
      private var var_1224:IWindowContainer;
      
      private var var_922:ITextWindow;
      
      private var var_975:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_786:ITextWindow;
      
      private var var_1222:ITextWindow;
      
      private var var_973:ITextWindow;
      
      private var var_783:ITextWindow;
      
      private var var_1478:ITextWindow;
      
      private var var_272:IWindowContainer;
      
      private var var_785:IWindowContainer;
      
      private var var_1480:IWindowContainer;
      
      private var var_1838:ITextWindow;
      
      private var var_633:ITextWindow;
      
      private var var_1837:IWindow;
      
      private var var_1227:IContainerButtonWindow;
      
      private var var_1228:IContainerButtonWindow;
      
      private var var_1226:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1223:IContainerButtonWindow;
      
      private var var_1479:IButtonWindow;
      
      private var var_1481:IButtonWindow;
      
      private var var_1482:IButtonWindow;
      
      private var var_784:IWindowContainer;
      
      private var var_1225:ITextWindow;
      
      private var var_976:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_782:IButtonWindow;
      
      private var var_1483:Boolean = false;
      
      private const const_889:int = 75;
      
      private const const_852:int = 3;
      
      private const const_990:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_370 = new RoomEventViewCtrl(this._navigator);
         this.var_146 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_271 = new RoomThumbnailCtrl(this._navigator);
         this.var_974 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_146);
         this.var_372 = new Timer(6000,1);
         this.var_372.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_372)
         {
            this.var_372.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_372.reset();
            this.var_372 = null;
         }
         this._navigator = null;
         this.var_370 = null;
         this.var_146 = null;
         this.var_271 = null;
         if(this.var_974)
         {
            this.var_974.dispose();
            this.var_974 = null;
         }
         this.var_198 = null;
         this.var_371 = null;
         this.var_369 = null;
         this.var_632 = null;
         this.var_1839 = null;
         this.var_1836 = null;
         this.var_1224 = null;
         this.var_922 = null;
         this.var_975 = null;
         this._ownerName = null;
         this.var_786 = null;
         this.var_1222 = null;
         this.var_973 = null;
         this.var_783 = null;
         this.var_1478 = null;
         this.var_272 = null;
         this.var_785 = null;
         this.var_1480 = null;
         this.var_1838 = null;
         this.var_633 = null;
         this.var_1837 = null;
         this.var_1227 = null;
         this.var_1228 = null;
         this.var_1226 = null;
         this._remFavouriteButton = null;
         this.var_1223 = null;
         this.var_1479 = null;
         this.var_1481 = null;
         this.var_1482 = null;
         this.var_784 = null;
         this.var_1225 = null;
         this.var_976 = null;
         this._buttons = null;
         this.var_782 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_372.reset();
         this.var_370.active = true;
         this.var_146.active = false;
         this.var_271.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_372.reset();
         this.var_146.load(param1);
         this.var_146.active = true;
         this.var_370.active = false;
         this.var_271.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_146.active = true;
         this.var_370.active = false;
         this.var_271.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_372.reset();
         this.var_146.active = false;
         this.var_370.active = false;
         this.var_271.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1483 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_372.reset();
         this.var_370.active = false;
         this.var_146.active = false;
         this.var_271.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_852;
         this._window.y = this.const_889;
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_198,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_198.height = Util.getLowestPoint(this.var_198);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_990;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_371);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_146.refresh(this.var_371);
         this.var_271.refresh(this.var_371);
         Util.moveChildrenToColumn(this.var_371,["room_details","room_buttons"],0,2);
         this.var_371.height = Util.getLowestPoint(this.var_371);
         this.var_371.visible = true;
         Logger.log("XORP: " + this.var_369.visible + ", " + this.var_1224.visible + ", " + this.var_632.visible + ", " + this.var_632.rectangle + ", " + this.var_371.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_272);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_370.refresh(this.var_272);
         if(Util.hasVisibleChildren(this.var_272) && !(this.var_146.active || this.var_271.active))
         {
            Util.moveChildrenToColumn(this.var_272,["event_details","event_buttons"],0,2);
            this.var_272.height = Util.getLowestPoint(this.var_272);
            this.var_272.visible = true;
         }
         else
         {
            this.var_272.visible = false;
         }
         Logger.log("EVENT: " + this.var_272.visible + ", " + this.var_272.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_146.active && !this.var_271.active && !this.var_370.active)
         {
            this.var_784.visible = true;
            this.var_976.text = this.getEmbedData();
         }
         else
         {
            this.var_784.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_146.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_782)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_782.visible = _loc1_;
            if(this.var_1483)
            {
               this.var_782.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_782.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_146.active || this.var_271.active)
         {
            return;
         }
         this.var_922.text = param1.roomName;
         this.var_922.height = this.var_922.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_786.text = param1.description;
         this.var_974.refreshTags(this.var_369,param1.tags);
         this.var_786.visible = false;
         if(param1.description != "")
         {
            this.var_786.height = this.var_786.textHeight + 5;
            this.var_786.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1228,"facebook_logo_small",_loc3_,null,0);
         this.var_1228.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1227,"thumb_up",_loc4_,null,0);
         this.var_1227.visible = _loc4_;
         this.var_783.visible = !_loc4_;
         this.var_1478.visible = !_loc4_;
         this.var_1478.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_369,"home",param2,null,0);
         this._navigator.refreshButton(this.var_369,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_369,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_922.y,0);
         this.var_369.visible = true;
         this.var_369.height = Util.getLowestPoint(this.var_369);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_369.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_146.active || this.var_271.active)
         {
            return;
         }
         this.var_975.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_975.height = this.var_975.textHeight + 5;
         this.var_1222.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1222.height = this.var_1222.textHeight + 5;
         Util.moveChildrenToColumn(this.var_632,["public_space_name","public_space_desc"],this.var_975.y,0);
         this.var_632.visible = true;
         this.var_632.height = Math.max(86,Util.getLowestPoint(this.var_632));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_370.active)
         {
            return;
         }
         this.var_1838.text = param1.eventName;
         this.var_633.text = param1.eventDescription;
         this.var_974.refreshTags(this.var_785,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_633.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_633.height = this.var_633.textHeight + 5;
            this.var_633.y = Util.getLowestPoint(this.var_785) + 2;
            this.var_633.visible = true;
         }
         this.var_785.visible = true;
         this.var_785.height = Util.getLowestPoint(this.var_785);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_146.active || this.var_271.active)
         {
            return;
         }
         this.var_1479.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1226.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1223.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1224.visible = Util.hasVisibleChildren(this.var_1224);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_370.active)
         {
            return;
         }
         this.var_1481.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1482.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1480.visible = Util.hasVisibleChildren(this.var_1480);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_198 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_371 = IWindowContainer(this.find("room_info"));
         this.var_369 = IWindowContainer(this.find("room_details"));
         this.var_632 = IWindowContainer(this.find("public_space_details"));
         this.var_1839 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1836 = IWindowContainer(this.find("rating_cont"));
         this.var_1224 = IWindowContainer(this.find("room_buttons"));
         this.var_922 = ITextWindow(this.find("room_name"));
         this.var_975 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_786 = ITextWindow(this.find("room_desc"));
         this.var_1222 = ITextWindow(this.find("public_space_desc"));
         this.var_973 = ITextWindow(this.find("owner_caption"));
         this.var_783 = ITextWindow(this.find("rating_caption"));
         this.var_1478 = ITextWindow(this.find("rating_txt"));
         this.var_272 = IWindowContainer(this.find("event_info"));
         this.var_785 = IWindowContainer(this.find("event_details"));
         this.var_1480 = IWindowContainer(this.find("event_buttons"));
         this.var_1838 = ITextWindow(this.find("event_name"));
         this.var_633 = ITextWindow(this.find("event_desc"));
         this.var_1228 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1227 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1837 = this.find("staff_pick_button");
         this.var_1226 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1223 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1479 = IButtonWindow(this.find("room_settings_button"));
         this.var_1481 = IButtonWindow(this.find("create_event_button"));
         this.var_1482 = IButtonWindow(this.find("edit_event_button"));
         this.var_784 = IWindowContainer(this.find("embed_info"));
         this.var_1225 = ITextWindow(this.find("embed_info_txt"));
         this.var_976 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_782 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1226,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1479,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1223,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1481,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1482,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_976,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1227,this.onThumbUp);
         this.addMouseClickListener(this.var_1837,this.onStaffPick);
         this.addMouseClickListener(this.var_1228,this.onFacebookLike);
         this.addMouseClickListener(this.var_782,this.onZoomClick);
         this._navigator.refreshButton(this.var_1226,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1223,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_371,this.onHover);
         this.addMouseOverListener(this.var_272,this.onHover);
         this.var_973.width = this.var_973.textWidth;
         Util.moveChildrenToRow(this.var_1839,["owner_caption","owner_name"],this.var_973.x,this.var_973.y,3);
         this.var_783.width = this.var_783.textWidth;
         Util.moveChildrenToRow(this.var_1836,["rating_caption","rating_txt"],this.var_783.x,this.var_783.y,3);
         this.var_1225.height = this.var_1225.textHeight + 5;
         Util.moveChildrenToColumn(this.var_784,["embed_info_txt","embed_src_txt"],this.var_1225.y,2);
         this.var_784.height = Util.getLowestPoint(this.var_784) + 5;
         this.var_3016 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_976.setSelection(0,this.var_976.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_355));
         this.var_1483 = !this.var_1483;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_372.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_146 != null)
         {
            this.var_146.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
