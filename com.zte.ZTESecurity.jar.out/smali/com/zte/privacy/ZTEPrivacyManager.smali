.class public Lcom/zte/privacy/ZTEPrivacyManager;
.super Ljava/lang/Object;
.source "ZTEPrivacyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEPrivacyManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/zte/privacy/IZTEPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zte/privacy/IZTEPrivacyManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/zte/privacy/IZTEPrivacyManager;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    .line 22
    iput-object p1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public addLockedPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->addLockedPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public checkCallingPermission(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 49
    :goto_0
    return v1

    .line 46
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1, p2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkCallingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public checkNetworkAccessPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkNetworkAccessPermission(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkRecordingPermission(Ljava/lang/String;I)I
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 71
    :goto_0
    return v1

    .line 68
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1, p2}, Lcom/zte/privacy/IZTEPrivacyManager;->checkRecordingPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public clearAllLockedPackages()V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1}, Lcom/zte/privacy/IZTEPrivacyManager;->clearAllLockedPackages()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearPackagePermissionSetting(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->clearPackagePermissionSetting(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public enforceAppLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->enforceAppLocked(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllLockedPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1}, Lcom/zte/privacy/IZTEPrivacyManager;->getAllLockedPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAntiPhoneRecordingSetting()I
    .locals 2

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1}, Lcom/zte/privacy/IZTEPrivacyManager;->getAntiPhoneRecordingSetting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 162
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSecurityExtentionVersion()I
    .locals 2

    .prologue
    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1}, Lcom/zte/privacy/IZTEPrivacyManager;->getSecurityExtentionVersion()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 29
    :goto_0
    return v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isPackageLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 133
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return v1

    .line 137
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v2, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->isPackageLocked(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeLockedPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 118
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->removeLockedPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    .locals 1
    .param p1, "setting"    # Lcom/zte/privacy/ZTEPackagePermissionSetting;

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v0, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAntiPhoneRecordingSetting(I)V
    .locals 2
    .param p1, "setting"    # I

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/zte/privacy/ZTEPrivacyManager;->mService:Lcom/zte/privacy/IZTEPrivacyManager;

    invoke-interface {v1, p1}, Lcom/zte/privacy/IZTEPrivacyManager;->setAntiPhoneRecordingSetting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
