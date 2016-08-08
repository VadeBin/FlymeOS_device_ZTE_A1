.class public Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;
.super Ljava/lang/Object;
.source "ZTEAntiPhoneRecordingUtils.java"


# static fields
.field private static final ANTI_CLOSE:I = 0x1

.field private static final ANTI_OPEN:I = 0x0

.field private static final ANTI_PHONE_RECORDING:Ljava/lang/String; = "ANTI_PHONE_RECORDING"

.field private static final TAG:Ljava/lang/String; = "ZTEAntiPhoneRecordingUtils"

.field private static final perfName:Ljava/lang/String; = "anti_phone_recording_setting"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/zte/privacy/ZTEPrivacyManagerService;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/ZTEPrivacyManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "mService"    # Lcom/zte/privacy/ZTEPrivacyManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    .line 79
    iput-object p2, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private getCurrentCallState()I
    .locals 3

    .prologue
    .line 56
    iget-object v1, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 58
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    return v1
.end method

.method private isSystemApp(I)Z
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 27
    const/16 v7, 0x2710

    if-gt p1, v7, :cond_0

    .line 39
    :goto_0
    return v1

    .line 31
    :cond_0
    iget-object v7, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 32
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "packages":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 35
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v2, v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 37
    :goto_1
    if-eqz v3, :cond_2

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 38
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-eqz v0, :cond_4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 39
    .local v1, "isSystem":Z
    :goto_3
    goto :goto_0

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "isSystem":Z
    :cond_1
    move-object v3, v5

    .line 35
    goto :goto_1

    :cond_2
    move-object v0, v5

    .line 37
    goto :goto_2

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_3
    move v1, v6

    .line 38
    goto :goto_3

    :cond_4
    move v1, v6

    goto :goto_3

    .line 36
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method


# virtual methods
.method public clearAntiPRSetting()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getAdapter()Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->clearAntiPRSetting()V

    .line 44
    return-void
.end method

.method public getAntiPRSetting()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getAdapter()Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->getAntiPRSetting()I

    move-result v0

    return v0
.end method

.method public needRefuseRecording(I)Z
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 62
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->getCurrentCallState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->getAntiPRSetting()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->isSystemApp(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v1, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v1, v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerService;->KillApplication(Ljava/lang/String;I)V

    .line 67
    iget-object v1, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v1, v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->sendAntiPhoneRecordingBroadcast(Ljava/lang/String;)V

    .line 68
    const-string v1, "ZTEAntiPhoneRecordingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needRefusePhoneRecording enter , uid is :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSystemApp is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->isSystemApp(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v1, 0x1

    .line 74
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAntiPRSetting(I)V
    .locals 1
    .param p1, "setting"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/privacy/ZTEAntiPhoneRecordingUtils;->mService:Lcom/zte/privacy/ZTEPrivacyManagerService;

    invoke-virtual {v0}, Lcom/zte/privacy/ZTEPrivacyManagerService;->getAdapter()Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManagerSettingsAdapter;->setAntiPRSetting(I)V

    .line 53
    return-void
.end method
