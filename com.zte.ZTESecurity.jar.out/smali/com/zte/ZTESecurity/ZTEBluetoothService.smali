.class public Lcom/zte/ZTESecurity/ZTEBluetoothService;
.super Lcom/zte/security/ZTEIBluetooth;
.source "ZTEBluetoothService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final TAG:Ljava/lang/String; = "ZTEBluetoothService"


# instance fields
.field private mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIBluetooth;-><init>(Landroid/os/IBinder;)V

    .line 16
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getInstance()Lcom/zte/ZTESecurity/ZTESecUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    .line 17
    return-void
.end method


# virtual methods
.method public disable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceChangeBluetoothPermission(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    const/4 v1, 0x1

    .line 28
    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEIBluetooth;->disable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTEBluetoothService"

    const-string v2, "Exception disable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    throw v0
.end method

.method public enable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 38
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    const-string v4, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v2, v3, v4}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v2, v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceChangeBluetoothPermission(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEIBluetooth;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTEBluetoothService"

    const-string v2, "Exception enable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    throw v0
.end method
