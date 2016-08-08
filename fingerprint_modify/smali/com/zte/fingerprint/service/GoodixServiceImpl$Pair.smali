.class Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;
.super Ljava/lang/Object;
.source "GoodixServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/fingerprint/service/GoodixServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pair"
.end annotation


# instance fields
.field actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

.field final synthetic this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

.field uid:I

.field unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;


# direct methods
.method public constructor <init>(Lcom/zte/fingerprint/service/GoodixServiceImpl;ILcom/android/fingerprints/keyguard/IFingerActionCallback;Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
    .locals 0
    .param p2, "uid"    # I
    .param p3, "fingerActionCallback"    # Lcom/android/fingerprints/keyguard/IFingerActionCallback;
    .param p4, "fingerprintUnlockCallback"    # Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->this$0:Lcom/zte/fingerprint/service/GoodixServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    iput p2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->uid:I

    .line 543
    iput-object p3, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    .line 544
    iput-object p4, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    .line 545
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 550
    .local v0, "equals":Z
    instance-of v1, p1, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    if-eqz v1, :cond_0

    .line 551
    check-cast p1, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->uid:I

    iget v2, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->uid:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 553
    :cond_0
    :goto_0
    return v0

    .line 551
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, ", IFingerActionCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->actionCallback:Lcom/android/fingerprints/keyguard/IFingerActionCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 563
    const-string v1, ", IFingerprintUnlockCallback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v1, p0, Lcom/zte/fingerprint/service/GoodixServiceImpl$Pair;->unlockCallback:Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
