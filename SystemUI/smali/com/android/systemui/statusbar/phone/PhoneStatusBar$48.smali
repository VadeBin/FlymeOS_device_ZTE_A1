.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3987
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
# hxs modify begin
# +3
    .locals 33
# hxs modify end
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3989
    sget-boolean v26, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v26, :cond_0

    const-string v26, "PhoneStatusBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "onReceive: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 3991
    .local v5, "action":Ljava/lang/String;
    const-string v26, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 3992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->getSendingUserId()I

    move-result v27

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCurrentProfile(I)Z
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 3993
    const/4 v12, 0x0

    .line 3994
    .local v12, "flags":I
    const-string v26, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3995
    .local v22, "reason":Ljava/lang/String;
    if-eqz v22, :cond_1

    const-string v26, "recentapps"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 3996
    or-int/lit8 v12, v12, 0x2

    .line 3998
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 4205
    .end local v12    # "flags":I
    .end local v22    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 4001
    :cond_3
# hxs modify begin
# sn demoMode receive DELAYED_PLAYVIDEO_ACTION and clearAllNotifications

    const-string v26, "android.intent.action.NAVI_FINGERPRINT"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_hxs_0

    const-string v26, "event"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .local v30, "extString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const-string v27, "content://com.zte.fingerprints/notification"

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isFingerPrintsSettingsOn(Ljava/lang/String;)Z
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doIsFingerPrintsSettingsOn(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Z

    move-result v31

    .local v31, "notiPanelToOpen":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const-string v27, "content://com.zte.fingerprints/recentapp"

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isFingerPrintsSettingsOn(Ljava/lang/String;)Z
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doIsFingerPrintsSettingsOn(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Z

    move-result v32

    .local v32, "recentAppToOpen":Z
    const-string v26, "up"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_hxs_1

    const-string v26, "PhoneStatusBar"

    const-string v27, "*****hxs close panel received!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v31, :cond_hxs_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v26

    if-nez v26, :cond_hxs_2

    const-string v26, "PhoneStatusBar"

    const-string v27, "*****hxs is not fullyCollapsed"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    goto/16 :goto_0

    :cond_hxs_2
    if-eqz v32, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLauncherState()Z
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doIsLauncherState(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v26

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMHandler(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v26

    const/16 v27, 0x3fb

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMHandler(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v26

    const/16 v27, 0x3fb

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_hxs_1
    if-eqz v31, :cond_2

    const-string v26, "down"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMStatusBarWindowState(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v26

    if-nez v26, :cond_2

    const-string v26, "PhoneStatusBar"

    const-string v27, "*****hxs open panel received!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v26

    if-eqz v26, :cond_hxs_3

    const-string v26, "PhoneStatusBar"

    const-string v27, "*****hxs isFullyCollapsed()"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMHandler(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v26

    const/16 v27, 0x3e8

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMHandler(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v26

    const/16 v27, 0x3e8

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_hxs_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMHandler(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v26

    const/16 v27, 0x3e7

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getMHandler(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v26

    const/16 v27, 0x3e7

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_hxs_0
# hxs modify end
    const-string v26, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 4002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_4

    .line 4011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->hideMirror()V

    .line 4015
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZZ)V

    goto :goto_0

    .line 4017
    :cond_5
    const-string v26, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 4018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 4021
    :cond_6
    const-string v26, "com.android.systemui.demo"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 4022
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 4023
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_2

    .line 4024
    const-string v26, "command"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 4025
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_2

    .line 4027
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4028
    :catch_0
    move-exception v23

    .line 4029
    .local v23, "t":Ljava/lang/Throwable;
    const-string v26, "PhoneStatusBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Error running demo command, intent="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4033
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "command":Ljava/lang/String;
    .end local v23    # "t":Ljava/lang/Throwable;
    :cond_7
    const-string v26, "fake_artwork"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 4037
    const-string v26, "android.intent.action.LOCK_WALLPAPER_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 4041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lmeizu/wallpaper/FlymeWallpaperManager;->getLockWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v27

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLockWallpaper:Landroid/graphics/Bitmap;
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4044
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lmeizu/wallpaper/FlymeWallpaperManager;->getLockWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v27

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurLockWallpaper:Landroid/graphics/Bitmap;
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/meizu/keyguard/BlurBitmapFactory$BlurBitmapError; {:try_start_1 .. :try_end_1} :catch_1

    .line 4048
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurBackground:Landroid/widget/ImageView;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasArtwork:Z
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v26

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurArtBitmap:Landroid/graphics/Bitmap;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/graphics/Bitmap;

    move-result-object v26

    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    invoke-virtual/range {v26 .. v29}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDropViews(ZZZ)V

    goto/16 :goto_0

    .line 4048
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlurLockWallpaper:Landroid/graphics/Bitmap;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/graphics/Bitmap;

    move-result-object v26

    goto :goto_2

    .line 4053
    :cond_9
    const-string v26, "android.intent.action.ACCESS_CONTROL_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 4054
    const-string v26, "PhoneStatusBar"

    const-string v27, "ACCESS_CONTROL_CHANGED!!!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4057
    invoke-static {}, Lcom/flyme/systemui/statusbar/phone/FlymeStatusBarIconUtils;->clearAppEncrptedCache()V

    .line 4059
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/IntentExt;->getAccessPackageName()Ljava/lang/String;

    move-result-object v21

    .line 4061
    .local v21, "pkg":Ljava/lang/String;
    const-string v26, "fromNotification"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 4063
    .local v13, "fromNotification":Z
    const-string v26, "PhoneStatusBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "changed pkg = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4068
    if-nez v21, :cond_13

    .line 4070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsAppLockEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    .line 4074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v4

    .line 4076
    .local v4, "N":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v4, :cond_d

    .line 4077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 4078
    .local v9, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 4080
    .local v8, "curPkg":Ljava/lang/String;
    const/16 v17, 0x0

    .line 4081
    .local v17, "isFakeExist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_a

    .line 4082
    const/16 v17, 0x1

    .line 4085
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_c

    if-nez v17, :cond_c

    .line 4087
    new-instance v11, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v11, v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 4089
    .local v11, "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/16 v26, 0x1

    move/from16 v0, v26

    iput-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    .line 4091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v27, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateFakeViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    invoke-static {v0, v11, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v26

    if-nez v26, :cond_b

    .line 4095
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/NotificationData;->addFake(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 4096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSortFakeEntries()V

    .line 4097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    move-object/from16 v26, v0

    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4076
    .end local v11    # "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 4100
    .end local v8    # "curPkg":Ljava/lang/String;
    .end local v9    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v17    # "isFakeExist":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    goto/16 :goto_0

    .line 4106
    .end local v4    # "N":I
    .end local v14    # "i":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v4

    .line 4108
    .restart local v4    # "N":I
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 4110
    .local v25, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    if-ge v14, v4, :cond_10

    .line 4111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 4112
    .restart local v9    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 4114
    .restart local v8    # "curPkg":Ljava/lang/String;
    const/16 v17, 0x0

    .line 4115
    .restart local v17    # "isFakeExist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_f

    .line 4116
    const/16 v17, 0x1

    .line 4121
    if-eqz v17, :cond_f

    .line 4122
    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4110
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 4126
    .end local v8    # "curPkg":Ljava/lang/String;
    .end local v9    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v17    # "isFakeExist":Z
    :cond_10
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_12

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4127
    .local v10, "fake":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;
    invoke-static {v0, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4128
    const-string v26, "com.android.dialer"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    .line 4129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const-string v27, "com.android.phone"

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const-string v27, "com.android.server.telecom"

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    goto :goto_5

    .line 4134
    .end local v10    # "fake":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    goto/16 :goto_0

    .line 4143
    .end local v4    # "N":I
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v25    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_14

    .line 4144
    const-string v26, "PhoneStatusBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "wrong password or exit password input activity..."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4146
    :cond_14
    const-string v26, "PhoneStatusBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "correct password!!"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4148
    const-string v26, "com.android.dialer"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 4149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const-string v27, "com.android.phone"

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    const-string v27, "com.android.server.telecom"

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;
    invoke-static/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4152
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 4158
    if-eqz v13, :cond_2

    .line 4159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getOnlyOneNotiForPkg(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v19

    .line 4160
    .local v19, "only":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v19, :cond_16

    .line 4164
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    .line 4165
    .local v18, "it":Landroid/app/PendingIntent;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 4166
    .local v20, "pk":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v24

    .line 4167
    .local v24, "tag":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v16

    .line 4170
    .local v16, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->simulateNotiOnClick(Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_0

    .line 4175
    .end local v16    # "id":I
    .end local v18    # "it":Landroid/app/PendingIntent;
    .end local v20    # "pk":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    goto/16 :goto_0

    .line 4183
    .end local v13    # "fromNotification":Z
    .end local v19    # "only":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v21    # "pkg":Ljava/lang/String;
    :cond_17
    const-string v26, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 4184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllNotificationsAndNoAnimation()V

    .line 4185
    const-string v26, "PhoneStatusBar"

    const-string v27, "demoMode receive DELAYED_PLAYVIDEO_ACTION and clearAllNotifications"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4188
    :cond_18
    const-string v26, "android.intent.action.PROXIMITY_SCREEN_OFF"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 4189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v27, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapsePanelsWithoutAnimation:Ljava/lang/Runnable;
    invoke-static/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v27, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapsePanelsWithoutAnimation:Ljava/lang/Runnable;
    invoke-static/range {v27 .. v27}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v27

    const-wide/16 v28, 0x1e

    invoke-virtual/range {v26 .. v29}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 4192
    :cond_19
    const-string v26, "android.intent.action.ACTION_REMOVE_HIDE_NAVIGATION_BAR_BUTTON"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 4193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 4194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->removeHideButton()V

    goto/16 :goto_0

    .line 4197
    :cond_1a
    const-string v26, "android.intent.action.ACTION_ADD_HIDE_NAVIGATION_BAR_BUTTON"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1b

    .line 4198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 4199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->addHideButton()V

    goto/16 :goto_0

    .line 4202
    :cond_1b
    const-string v26, "android.intent.action.ACTION_CHANGE_NAVIGATION_BAR_POSITION"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 4203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v26, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static/range {v26 .. v26}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4046
    :catch_1
    move-exception v26

    goto/16 :goto_1
.end method
