.class public Lcom/android/keyguard/FingerprintHelper;
.super Ljava/lang/Object;
.source "FingerprintHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FPCUnlock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFingerPrinter(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 41
    :try_start_0
    const-string v5, "content://com.zte.fingerprints/fingerquery"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 42
    .local v0, "checkedUrl":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 43
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "isExist":Ljava/lang/String;
    const-string v5, "FPCUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "==================>checkFingerPrinter="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v3, :cond_0

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 46
    const/4 v4, 0x1

    .line 52
    .end local v0    # "checkedUrl":Landroid/net/Uri;
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "isExist":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 50
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "FPCUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "==================>checkFingerPrinter= fase"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkSreenLock(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 20
    :try_start_0
    const-string v5, "content://com.zte.fingerprints/screen"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 21
    .local v0, "checkedUrl":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 22
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "isOpen":Ljava/lang/String;
    const-string v5, "FPCUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "==================>checkSreenLock="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    if-eqz v3, :cond_0

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 25
    const/4 v4, 0x1

    .line 31
    .end local v0    # "checkedUrl":Landroid/net/Uri;
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "isOpen":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "FPCUnlock"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "==================>checkSreenLock= fase"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDeviceWithFingerPrint(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v1, "com.zte.fingerprints"

    .line 63
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 64
    const-string v3, "com.zte.fingerprints"

    .line 65
    const/16 v4, 0x2000

    .line 64
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 66
    const-string v2, "FPCUnlock"

    const-string v3, "==================>isDeviceWithFingerPrint=true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v2, 0x1

    .line 70
    :goto_0
    return v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FPCUnlock"

    const-string v3, "==================>isDeviceWithFingerPrint=false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v2, 0x0

    goto :goto_0
.end method
