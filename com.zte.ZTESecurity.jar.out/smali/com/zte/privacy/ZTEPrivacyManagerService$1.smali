.class Lcom/zte/privacy/ZTEPrivacyManagerService$1;
.super Landroid/os/Handler;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPrivacyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 146
    :goto_0
    :pswitch_0
    return-void

    .line 119
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;

    .line 120
    .local v1, "event":Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;
    iget-object v5, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    # getter for: Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;
    invoke-static {v5}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$300(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEPermissionEventUtils;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/zte/privacy/ZTEPermissionEventUtils;->sendPermissionEventBroadcast(Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;)V

    goto :goto_0

    .line 124
    .end local v1    # "event":Lcom/zte/privacy/ZTEPermissionEventUtils$PermissionEvent;
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 125
    .local v3, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    # getter for: Lcom/zte/privacy/ZTEPrivacyManagerService;->mAppLockStrategyUtils:Lcom/zte/privacy/ZTEAppLockStrategyUtils;
    invoke-static {v5}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$400(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEAppLockStrategyUtils;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->checkAppLockStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v3    # "packageName":Ljava/lang/String;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;

    .line 130
    .local v0, "appInfo":Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;
    iget-object v5, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iget-object v6, v0, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;->pkg:Ljava/lang/String;

    iget v7, v0, Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;->uid:I

    # invokes: Lcom/zte/privacy/ZTEPrivacyManagerService;->doKillApplication(Ljava/lang/String;I)V
    invoke-static {v5, v6, v7}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$500(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;I)V

    goto :goto_0

    .line 134
    .end local v0    # "appInfo":Lcom/zte/privacy/ZTEPrivacyManagerService$ApplicationInfo;
    :pswitch_4
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 135
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    # getter for: Lcom/zte/privacy/ZTEPrivacyManagerService;->mPermissionEventUtils:Lcom/zte/privacy/ZTEPermissionEventUtils;
    invoke-static {v5}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$300(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEPermissionEventUtils;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zte/privacy/ZTEPermissionEventUtils;->sendAntiPhoneEventBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    .end local v4    # "pkg":Ljava/lang/String;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;

    .line 141
    .local v2, "info":Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;
    iget-object v5, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$1;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iget-object v6, v2, Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;->pkg:Ljava/lang/String;

    iget-boolean v7, v2, Lcom/zte/privacy/ZTEPrivacyManagerService$NotificationInfo;->enabled:Z

    # invokes: Lcom/zte/privacy/ZTEPrivacyManagerService;->doSetNotificationEnabled(Ljava/lang/String;Z)V
    invoke-static {v5, v6, v7}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$600(Lcom/zte/privacy/ZTEPrivacyManagerService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
