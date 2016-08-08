.class Lcom/goodix/fingerprint/FingerprintManager$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/zui/fingerprint/FingerprintManager$IAuthenticateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/FingerprintManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/goodix/fingerprint/FingerprintManager;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/goodix/fingerprint/FingerprintManager$1;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I[B)V
    .locals 5
    .param p1, "result"    # I
    .param p2, "uvt"    # [B

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x20

    .line 430
    array-length v0, p2

    if-lez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$1;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalAuthenListener:Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$100(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/goodix/fingerprint/FingerprintManager$1;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    array-length v2, p2

    add-int/lit8 v2, v2, -0x20

    # invokes: Lcom/goodix/fingerprint/FingerprintManager;->subByteArray([BII)[B
    invoke-static {v1, p2, v4, v2}, Lcom/goodix/fingerprint/FingerprintManager;->access$000(Lcom/goodix/fingerprint/FingerprintManager;[BII)[B

    move-result-object v1

    iget-object v2, p0, Lcom/goodix/fingerprint/FingerprintManager$1;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    # invokes: Lcom/goodix/fingerprint/FingerprintManager;->subByteArray([BII)[B
    invoke-static {v2, p2, v3, v4}, Lcom/goodix/fingerprint/FingerprintManager;->access$000(Lcom/goodix/fingerprint/FingerprintManager;[BII)[B

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;->onResult(I[B[B)V

    .line 434
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$1;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalAuthenListener:Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$100(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;

    move-result-object v0

    invoke-interface {v0, p1, v1, v1}, Lcom/goodix/fingerprint/FingerprintManager$IAuthenticateListener;->onResult(I[B[B)V

    goto :goto_0
.end method
