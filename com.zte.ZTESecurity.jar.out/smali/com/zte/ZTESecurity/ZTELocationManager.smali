.class public Lcom/zte/ZTESecurity/ZTELocationManager;
.super Lcom/zte/security/ZTEILocationManager;
.source "ZTELocationManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTELocationManager"


# instance fields
.field private mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/zte/security/ZTEILocationManager;-><init>(Landroid/os/IBinder;)V

    .line 30
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getInstance()Lcom/zte/ZTESecurity/ZTESecUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    .line 31
    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z
    .locals 3
    .param p1, "listener"    # Landroid/location/IGpsStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkPermissionsSafe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 40
    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zte/security/ZTEILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTELocationManager"

    const-string v2, "Exception addGpsStatusListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    throw v0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkPermissionsSafe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEILocationManager;->getAllProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTELocationManager"

    const-string v2, "Exception requestGeofence"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    throw v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .locals 3
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkPermissionsSafe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 84
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zte/security/ZTEILocationManager;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTELocationManager"

    const-string v2, "Exception getLastLocation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    throw v0
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkPermissionsSafe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 98
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEILocationManager;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTELocationManager"

    const-string v2, "Exception getProviderProperties"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    throw v0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 3
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkPermissionsSafe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 139
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zte/security/ZTEILocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTELocationManager"

    const-string v2, "Exception getProviders"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    throw v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkPermissionsSafe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const/4 v1, 0x0

    .line 54
    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEILocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTELocationManager"

    const-string v2, "Exception isProviderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    throw v0
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkPermissionsSafe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/security/ZTEILocationManager;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTELocationManager"

    const-string v2, "Exception requestGeofence"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTELocationManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v1}, Lcom/zte/ZTESecurity/ZTESecUtil;->checkPermissionsSafe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zte/security/ZTEILocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ZTELocationManager"

    const-string v2, "Exception requestLocationUpdates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    throw v0
.end method
