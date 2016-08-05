.class public Lcom/zte/fingerprint/main/FingerCountChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerCountChangeReceiver.java"


# instance fields
.field private FINGERPRINT_FPC:I

.field private FINGERPRINT_GOODIX:I

.field private TAG:Ljava/lang/String;

.field private mFingerprintManage:Lcom/zte/fingerprint/manage/FingerprintManage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->FINGERPRINT_FPC:I

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->FINGERPRINT_GOODIX:I

    .line 27
    const-class v0, Lcom/zte/fingerprint/main/FingerprintUnlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private doFpc(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 73
    const-string v0, "FingerCountChangeReceiver"

    .line 74
    .local v0, "TAG":Ljava/lang/String;
    const-class v4, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;

    move-result-object v2

    .line 75
    .local v2, "mFingerprintManager":Lcom/fingerprints/service/FingerprintManager;
    if-eqz v2, :cond_0

    .line 76
    const-string v4, "FingerPrint"

    const-string v5, "getIds"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v2}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v1

    .line 78
    .local v1, "mFingerIds":[I
    invoke-static {v0}, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->releaseManager(Ljava/lang/String;)V

    .line 79
    const-string v4, "pref:finger_count"

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "key:finger_count"

    if-nez v1, :cond_1

    .line 80
    :goto_0
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    new-instance p2, Landroid/content/Intent;

    .end local p2    # "intent":Landroid/content/Intent;
    const-string v3, "com.zte.fingerprints.SETTING_CHANGED"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .restart local p2    # "intent":Landroid/content/Intent;
    const-string v3, "SETTING_CHANGED_ITEM"

    const-string v4, "lock_for_secret_zone"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    .end local v1    # "mFingerIds":[I
    :cond_0
    return-void

    .line 79
    .restart local v1    # "mFingerIds":[I
    :cond_1
    array-length v3, v1

    goto :goto_0
.end method

.method private getFingerprintType()I
    .locals 5

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/fpc1020"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->TAG:Ljava/lang/String;

    const-string v3, "======fpc1020 does\'t exist============"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget v2, p0, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->FINGERPRINT_GOODIX:I

    .line 43
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return v2

    .line 38
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    iget v2, p0, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->FINGERPRINT_FPC:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check fpc1020 exist error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 51
    :try_start_0
    invoke-direct {p0}, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->getFingerprintType()I

    move-result v6

    iget v7, p0, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->FINGERPRINT_FPC:I

    if-ne v6, v7, :cond_1

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/zte/fingerprint/main/FingerCountChangeReceiver;->doFpc(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "FingerCountChangeReceiver"

    .line 55
    .local v0, "TAG":Ljava/lang/String;
    invoke-static {}, Lcom/zte/fingerprint/FingerprintManager;->open()Lcom/zte/fingerprint/FingerprintManager;

    move-result-object v4

    .line 56
    .local v4, "mFingerprintManager":Lcom/zte/fingerprint/FingerprintManager;
    if-eqz v4, :cond_0

    .line 57
    const-string v6, "FingerPrint"

    const-string v7, "getIds"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v4}, Lcom/zte/fingerprint/FingerprintManager;->getFpIds()[I

    move-result-object v3

    .line 59
    .local v3, "mFingerIds":[I
    const-string v6, "pref:finger_count"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key:finger_count"

    if-nez v3, :cond_2

    .line 60
    :goto_1
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.zte.fingerprints.SETTING_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local p2    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    const-string v5, "SETTING_CHANGED_ITEM"

    const-string v6, "lock_for_secret_zone"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p2, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 59
    :cond_2
    :try_start_2
    array-length v5, v3
    :try_end_2
    .catch Lcom/zte/fingerprint/FingerprintException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 66
    .end local v0    # "TAG":Ljava/lang/String;
    .end local v3    # "mFingerIds":[I
    .end local v4    # "mFingerprintManager":Lcom/zte/fingerprint/FingerprintManager;
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Lcom/zte/fingerprint/FingerprintException;
    :goto_2
    invoke-virtual {v1}, Lcom/zte/fingerprint/FingerprintException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v1    # "e":Lcom/zte/fingerprint/FingerprintException;
    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v0    # "TAG":Ljava/lang/String;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mFingerIds":[I
    .restart local v4    # "mFingerprintManager":Lcom/zte/fingerprint/FingerprintManager;
    :catch_1
    move-exception v1

    move-object p2, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method
