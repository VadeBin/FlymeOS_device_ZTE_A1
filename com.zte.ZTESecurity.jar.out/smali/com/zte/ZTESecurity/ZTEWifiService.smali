.class public Lcom/zte/ZTESecurity/ZTEWifiService;
.super Lcom/zte/security/ZTEIWifiManager;
.source "ZTEWifiService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEWifiService"


# instance fields
.field private mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIWifiManager;-><init>(Landroid/os/IBinder;)V

    .line 16
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getInstance()Lcom/zte/ZTESecurity/ZTESecUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEWifiService;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    .line 17
    return-void
.end method


# virtual methods
.method public setWifiEnabled(Z)Z
    .locals 4
    .param p1, "arg0"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEWifiService;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    const-string v2, "android.permission.CHANGE_WIFI_STATE"

    const-string v3, "WifiService"

    invoke-virtual {v1, v2, v3}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEWifiService;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1, p1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceChangeWifiPermission(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 27
    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEIWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTEWifiService"

    const-string v2, "Exception setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    throw v0
.end method
