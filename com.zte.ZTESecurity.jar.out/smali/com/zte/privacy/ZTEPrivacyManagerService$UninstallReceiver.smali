.class Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ZTEPrivacyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/ZTEPrivacyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;)V
    .locals 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 90
    # getter for: Lcom/zte/privacy/ZTEPrivacyManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$000(Lcom/zte/privacy/ZTEPrivacyManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 112
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 101
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v2, "com.zte.heartyservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    const-string v2, "ZTEPrivacyManagerService"

    const-string v3, "heartyservice been removed, so clear the related settings!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    # invokes: Lcom/zte/privacy/ZTEPrivacyManagerService;->clearAllPackagePermissionSettings()V
    invoke-static {v2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$100(Lcom/zte/privacy/ZTEPrivacyManagerService;)V

    .line 104
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->clearAllLockedPackages()V

    .line 105
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    # getter for: Lcom/zte/privacy/ZTEPrivacyManagerService;->mAntiPhoneRecordingUtils:Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;
    invoke-static {v2}, Lcom/zte/privacy/ZTEPrivacyManagerService;->access$200(Lcom/zte/privacy/ZTEPrivacyManagerService;)Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->clearAntiPRSetting()V

    goto :goto_0

    .line 107
    :cond_2
    const-string v2, "ZTEPrivacyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " been removed, so clear related settings!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v2, v1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->clearPackagePermissionSetting(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManagerService$UninstallReceiver;->this$0:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v2, v1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->removeLockedPackage(Ljava/lang/String;)V

    goto :goto_0
.end method
