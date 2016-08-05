.class public Lcom/zte/privacy/ZTEAppLockStrategyUtils;
.super Ljava/lang/Object;
.source "ZTEAppLockStrategyUtils.java"


# static fields
.field private static final EVENT_TYPE_LOCK:I = 0x0

.field private static final EVENT_TYPE_UNLOCK:I = 0x1

.field private static final EXTRA_PACKAGE:Ljava/lang/String; = "zte.intent.extra.package"

.field private static final EXTRA_TYPE:Ljava/lang/String; = "zte.intent.extra.type"

.field private static final TAG:Ljava/lang/String; = "ZTEAppLockStrategyUtils"

.field private static final ZTE_ACTION_APP_LOCK_EVENT:Ljava/lang/String; = "zte.intent.action.APP_LOCK_EVENT"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastResumedPkg:Ljava/lang/String;

.field private mService:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V
    .locals 1
    .param p1, "mService"    # Lcom/zte/privacy/ZTEPrivacyManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    .line 57
    iput-object p2, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private sendAppLockEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v1, "ZTEAppLockStrategyUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAppLockEvent, type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkg is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.intent.action.APP_LOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "zte.intent.extra.type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    if-nez p1, :cond_0

    .line 30
    const-string v1, "zte.intent.extra.package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    return-void
.end method


# virtual methods
.method public checkAppLockStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    iget-object v1, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->sendAppLockEvent(ILjava/lang/String;)V

    .line 46
    :cond_1
    iput-object p1, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_2
    iput-object p1, p0, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/zte/privacy/ZTEAppLockStrategyUtils;->sendAppLockEvent(ILjava/lang/String;)V

    goto :goto_0
.end method
