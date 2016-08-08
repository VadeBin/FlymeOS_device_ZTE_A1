.class public Lcom/zte/ZTESecurity/ZTETelephony;
.super Lcom/zte/security/ZTEITelephony;
.source "ZTETelephony.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTETelephony"


# instance fields
.field private mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/zte/security/ZTEITelephony;-><init>(Landroid/os/IBinder;)V

    .line 23
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getInstance()Lcom/zte/ZTESecurity/ZTESecUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    .line 24
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceCallPhonePermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 32
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zte/security/ZTEITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETelephony"

    const-string v2, "Exception call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    throw v0
.end method

.method public disableLocationUpdates()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadLocationPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETelephony"

    const-string v2, "Exception disableLocationUpdates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    throw v0
.end method

.method public disableLocationUpdatesForSubscriber(I)V
    .locals 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadLocationPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEITelephony;->disableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETelephony"

    const-string v2, "Exception disableLocationUpdatesForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    throw v0
.end method

.method public enableLocationUpdates()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadLocationPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETelephony"

    const-string v2, "Exception enableLocationUpdates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    throw v0
.end method

.method public enableLocationUpdatesForSubscriber(I)V
    .locals 3
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadLocationPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEITelephony;->enableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETelephony"

    const-string v2, "Exception enableLocationUpdatesForSubscriber"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    throw v0
.end method

.method public endCall()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceCallPhonePermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 47
    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETelephony"

    const-string v2, "Exception endCall"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    throw v0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadLocationPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 133
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEITelephony;->getCellLocation()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETelephony"

    const-string v2, "Exception getCellLocation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    throw v0
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadLocationPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 150
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETelephony"

    const-string v2, "Exception getNeighboringCellInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    throw v0
.end method

.method public setDataEnabled(IZ)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "ZTETelephony"

    invoke-virtual {v1, v2, v3}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTETelephony;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1, p1, p2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceChangeNetworkPermission(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v1, "ZTETelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled, subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zte/security/ZTEITelephony;->setDataEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTETelephony"

    const-string v2, "Exception setDataEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    throw v0
.end method
