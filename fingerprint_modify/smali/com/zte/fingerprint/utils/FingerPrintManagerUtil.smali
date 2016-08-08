.class public Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;
.super Ljava/lang/Object;
.source "FingerPrintManagerUtil.java"


# static fields
.field private static failCount:I

.field static mgr:Lcom/fingerprints/service/FingerprintManager;

.field private static signs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->signs:Ljava/util/HashSet;

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getManager(Ljava/lang/String;Landroid/content/Context;)Lcom/fingerprints/service/FingerprintManager;
    .locals 3
    .param p0, "sign"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-class v1, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->open()Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    sput-object v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->mgr:Lcom/fingerprints/service/FingerprintManager;

    .line 25
    sget-object v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->mgr:Lcom/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_1

    .line 26
    sget v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I

    .line 27
    sget v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 28
    const v0, 0x7f09006b

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 37
    :goto_0
    sget-object v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->mgr:Lcom/fingerprints/service/FingerprintManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :cond_0
    const v0, 0x7f09006a

    const/4 v2, 0x1

    :try_start_1
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    sput v0, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->failCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized releaseManager(Ljava/lang/String;)V
    .locals 5
    .param p0, "sign"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v2, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->mgr:Lcom/fingerprints/service/FingerprintManager;

    if-eqz v1, :cond_0

    .line 43
    sget-object v1, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->mgr:Lcom/fingerprints/service/FingerprintManager;

    invoke-virtual {v1}, Lcom/fingerprints/service/FingerprintManager;->release()V

    .line 44
    const/4 v1, 0x0

    sput-object v1, Lcom/zte/fingerprint/utils/FingerPrintManagerUtil;->mgr:Lcom/fingerprints/service/FingerprintManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "FingerPrintManagerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
