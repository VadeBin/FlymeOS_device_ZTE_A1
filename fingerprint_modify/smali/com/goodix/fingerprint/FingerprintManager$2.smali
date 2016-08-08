.class Lcom/goodix/fingerprint/FingerprintManager$2;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;


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
    .line 437
    iput-object p1, p0, Lcom/goodix/fingerprint/FingerprintManager$2;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(III)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "id"    # I
    .param p3, "userData"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$2;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalIdentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$200(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$2;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalIdentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$200(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;->onResult(III)V

    .line 450
    :cond_0
    return-void
.end method

.method public onStatus(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$2;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalIdentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$200(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$2;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalIdentifyListener:Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$200(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/goodix/fingerprint/FingerprintManager$IdentifyListener;->onStatus(II)V

    .line 443
    :cond_0
    return-void
.end method
