.class public Lcom/zte/ZTESecurity/ZTEPackageManager;
.super Lcom/zte/security/ZTEIPackageManager;
.source "ZTEPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTEPackageManager"


# instance fields
.field private mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIPackageManager;-><init>(Landroid/os/IBinder;)V

    .line 18
    invoke-static {}, Lcom/zte/ZTESecurity/ZTESecUtil;->getInstance()Lcom/zte/ZTESecurity/ZTESecUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    .line 19
    return-void
.end method


# virtual methods
.method public checkUidPermission(Ljava/lang/String;I)I
    .locals 4
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 25
    const/16 v3, 0x2710

    if-le p2, v3, :cond_3

    .line 26
    iget-object v3, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v3, p1}, Lcom/zte/ZTESecurity/ZTESecUtil;->isNetworkPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    iget-object v3, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v3, p1, p2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforcePrivacyNetAccessPermission(Ljava/lang/String;I)V

    .line 29
    :cond_0
    iget-object v3, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v3, p1}, Lcom/zte/ZTESecurity/ZTESecUtil;->isRecordingPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    iget-object v3, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v3, p1, p2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforcePrivacyRecordingPermission(Ljava/lang/String;I)Z

    move-result v1

    .line 31
    .local v1, "res":Z
    if-nez v1, :cond_2

    .line 42
    .end local v1    # "res":Z
    :cond_1
    :goto_0
    return v2

    .line 34
    :cond_2
    iget-object v3, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v3, p1}, Lcom/zte/ZTESecurity/ZTESecUtil;->isCameraPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    iget-object v3, p0, Lcom/zte/ZTESecurity/ZTEPackageManager;->mUtil:Lcom/zte/ZTESecurity/ZTESecUtil;

    invoke-virtual {v3, p1, p2}, Lcom/zte/ZTESecurity/ZTESecUtil;->enforceCameraPermission(Ljava/lang/String;I)Z

    move-result v1

    .line 36
    .restart local v1    # "res":Z
    if-eqz v1, :cond_1

    .line 42
    .end local v1    # "res":Z
    :cond_3
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/zte/security/ZTEIPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ZTEPackageManager"

    const-string v3, "Exception checkUidPermission"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    throw v0
.end method
