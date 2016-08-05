.class Lcom/zte/fingerprint/service/FPCServiceImpl$3;
.super Ljava/lang/Object;
.source "FPCServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/service/FPCServiceImpl;->registerFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/service/FPCServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/service/FPCServiceImpl;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$3;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->getManager()Lcom/fingerprints/service/FingerprintManager;

    move-result-object v0

    .line 100
    .local v0, "mFingerprintManager":Lcom/fingerprints/service/FingerprintManager;
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$3;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I
    invoke-static {v1}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$000(Lcom/zte/fingerprint/service/FPCServiceImpl;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$3;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I
    invoke-static {v1}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$000(Lcom/zte/fingerprint/service/FPCServiceImpl;)[I

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$3;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-virtual {v0}, Lcom/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v2

    # setter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I
    invoke-static {v1, v2}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$002(Lcom/zte/fingerprint/service/FPCServiceImpl;[I)[I

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$3;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I
    invoke-static {v1}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$000(Lcom/zte/fingerprint/service/FPCServiceImpl;)[I

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$3;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I
    invoke-static {v1}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$000(Lcom/zte/fingerprint/service/FPCServiceImpl;)[I

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    .line 105
    :cond_2
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$3;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v1, v2}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$3;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    iget-object v2, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$3;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    # getter for: Lcom/zte/fingerprint/service/FPCServiceImpl;->mFingerIds:[I
    invoke-static {v2}, Lcom/zte/fingerprint/service/FPCServiceImpl;->access$000(Lcom/zte/fingerprint/service/FPCServiceImpl;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fingerprints/service/FingerprintManager;->startIdentify(Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;[I)V

    goto :goto_0
.end method
