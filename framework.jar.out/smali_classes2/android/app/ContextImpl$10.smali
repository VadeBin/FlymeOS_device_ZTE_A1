.class final Landroid/app/ContextImpl$10;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 447
    const/4 v2, 0x0

    .line 449
    .local v2, "mobileMgr":Lcom/mediatek/common/mom/MobileManager;
    :try_start_0
    const-string v5, "mobile"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 450
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v4

    .line 451
    .local v4, "service":Lcom/mediatek/common/mom/IMobileManagerService;
    new-instance v3, Lcom/mediatek/common/mom/MobileManager;

    invoke-direct {v3, p1, v4}, Lcom/mediatek/common/mom/MobileManager;-><init>(Landroid/content/Context;Lcom/mediatek/common/mom/IMobileManagerService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "mobileMgr":Lcom/mediatek/common/mom/MobileManager;
    .local v3, "mobileMgr":Lcom/mediatek/common/mom/MobileManager;
    move-object v2, v3

    .line 455
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v3    # "mobileMgr":Lcom/mediatek/common/mom/MobileManager;
    .end local v4    # "service":Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v2    # "mobileMgr":Lcom/mediatek/common/mom/MobileManager;
    :goto_0
    return-object v2

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
