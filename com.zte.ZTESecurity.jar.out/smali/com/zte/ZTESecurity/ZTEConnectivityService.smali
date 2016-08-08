.class public Lcom/zte/ZTESecurity/ZTEConnectivityService;
.super Lcom/zte/security/ZTEIConnectivityManager;
.source "ZTEConnectivityService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEConnectivityService"


# instance fields
.field private mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIConnectivityManager;-><init>(Landroid/os/IBinder;)V

    .line 16
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getInstance()Lcom/zte/ZTESecurity/ZTESecUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEConnectivityService;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    .line 17
    return-void
.end method
