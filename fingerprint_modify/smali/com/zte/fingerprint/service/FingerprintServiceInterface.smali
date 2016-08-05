.class public abstract Lcom/zte/fingerprint/service/FingerprintServiceInterface;
.super Ljava/lang/Object;
.source "FingerprintServiceInterface.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/zte/fingerprint/service/FingerprintServiceInterface;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/zte/fingerprint/service/FingerprintServiceInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
.end method

.method public abstract registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
.end method

.method public abstract unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
.end method

.method public abstract unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
.end method
