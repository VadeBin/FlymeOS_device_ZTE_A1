.class public Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;
.super Lcom/zte/security/ZTEIPhoneSubInfo;
.source "ZTEPhoneSubInfo.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTEPhoneSubInfo"


# instance fields
.field private mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIPhoneSubInfo;-><init>(Landroid/os/IBinder;)V

    .line 16
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getInstance()Lcom/zte/ZTESecurity/ZTESecUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    .line 17
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadPhoneInfoPermission()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 31
    .end local v0    # "deviceId":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEIPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ZTEPhoneSubInfo"

    const-string v3, "Exception ZTEPhoneSubInfo getDeviceSvn"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    throw v1
.end method

.method public getDeviceIdForPhone(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadPhoneInfoPermission()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "deviceId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    .end local v0    # "deviceId":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEIPhoneSubInfo;->getDeviceIdForPhone(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "ZTEPhoneSubInfo"

    const-string v3, "Exception ZTEPhoneSubInfo getDeviceIdForSubscriber"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    throw v1
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadPhoneInfoPermission()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 127
    .end local v1    # "number":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "number":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEIPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ZTEPhoneSubInfo"

    const-string v3, "Exception ZTEPhoneSubInfo getSubscriberIdGemini"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    throw v0
.end method

.method public getLine1NumberForSubscriber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadPhoneInfoPermission()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "number":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 144
    .end local v1    # "number":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "number":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEIPhoneSubInfo;->getLine1NumberForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ZTEPhoneSubInfo"

    const-string v3, "Exception ZTEPhoneSubInfo getLine1NumberForSubscriber"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    throw v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadPhoneInfoPermission()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "subscriberId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 93
    .end local v1    # "subscriberId":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "subscriberId":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEIPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ZTEPhoneSubInfo"

    const-string v3, "Exception ZTEPhoneSubInfo getSubscriberId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    throw v0
.end method

.method public getSubscriberIdForSubscriber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceReadPhoneInfoPermission()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "subscriberId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 110
    .end local v1    # "subscriberId":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "subscriberId":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEIPhoneSubInfo;->getSubscriberIdForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ZTEPhoneSubInfo"

    const-string v3, "Exception ZTEPhoneSubInfo getSubscriberIdForSubscriber"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    throw v0
.end method
