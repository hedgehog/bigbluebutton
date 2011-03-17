package org.bigbluebutton.modules.classyaudio.managers
{
	import com.asfusion.mate.events.Dispatcher;
	
	import org.bigbluebutton.common.LogUtil;
	import org.bigbluebutton.common.UserManager;
	import org.bigbluebutton.common.events.ToolbarButtonEvent;
	import org.bigbluebutton.main.events.MadePresenterEvent;
	import org.bigbluebutton.main.model.User;
	import org.bigbluebutton.modules.classyaudio.events.CallConnectedEvent;
	import org.bigbluebutton.modules.classyaudio.events.PushToTalkEvent;
	import org.bigbluebutton.modules.classyaudio.views.PushToTalkButton;

	public class ClassyAudioManager
	{
		private var connectionManager:ConnectionManager;
		private var streamManager:StreamManager;
		private var onCall:Boolean = false;
		private var attributes:Object;
		
		private var dispatcher:Dispatcher;
		
		public function ClassyAudioManager()
		{
			dispatcher = new Dispatcher();
			connectionManager = new ConnectionManager();
			streamManager = new StreamManager();
		}
		
		public function setAttributes(attributes:Object):void{
			this.attributes = attributes;
			joinVoice();
			
			if (attributes.pushToTalkEnabled == "true") enablePushToTalkButton();
		}
		
		public function stopModule():void{
			
		}
		
		public function joinVoice():void {
			//Start listening
			//streamManager.initWithNoMicrophone();
			//streamManager.initMicrophone();
			
			var uid:String = String( Math.floor( new Date().getTime() ) );
			connectionManager.connect(uid, attributes.externUserID, attributes.username, attributes.room, attributes.uri);
		}
		
		public function dialConference():void {
			LogUtil.debug("Dialing...." + attributes.webvoiceconf + "...." + attributes.externUserID);
			connectionManager.doCall(attributes.webvoiceconf);
		}
		
		public function callConnected(event:CallConnectedEvent):void {
			LogUtil.debug("Call connected...");
			setupConnection();
			LogUtil.debug("callConnected: Connection Setup");
			streamManager.callConnected(event.playStreamName, event.publishStreamName, event.codec);
			LogUtil.debug("callConnected::onCall set");
			onCall = true;
			
			//Mute if the user is not the presenter at start
			//muteIfNotPresenter();
		}
		
		public function hangup():void {
			LogUtil.debug("PhoneManager hangup");
			if (onCall) {
				LogUtil.debug("PM OnCall");
				streamManager.stopStreams();
				connectionManager.doHangUp();
				LogUtil.debug("PM hangup::doHangUp");
				onCall = false;
			}			
		}
		
		private function setupConnection():void {
			streamManager.setConnection(connectionManager.getConnection());
		}
	
		public function switchToPresenter(e:MadePresenterEvent):void{
			streamManager.unmute();
		}
		
		public function switchToViewer(e:MadePresenterEvent):void{
			streamManager.mute();
		}
		
		public function buttonPushed(e:PushToTalkEvent):void{
			streamManager.unmute();
		}
		
		public function buttonReleased(e:PushToTalkEvent):void{
			streamManager.mute();
		}
		
		private function enablePushToTalkButton():void{
			var e:ToolbarButtonEvent = new ToolbarButtonEvent(ToolbarButtonEvent.ADD);
			e.button = new PushToTalkButton();
			dispatcher.dispatchEvent(e);
		}
		
		private function muteIfNotPresenter():void{
			var presenter:User = UserManager.getInstance().getPresenter();
			if (presenter != null){
				if (presenter.userid != attributes.userid){
					streamManager.mute();
				} else if (presenter.userid == attributes.userid){
					streamManager.unmute();
				}
			}
		}
	}
}