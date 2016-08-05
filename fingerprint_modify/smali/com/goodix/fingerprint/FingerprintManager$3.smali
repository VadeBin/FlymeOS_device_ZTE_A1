.class Lcom/goodix/fingerprint/FingerprintManager$3;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;


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
    .line 453
    iput-object p1, p0, Lcom/goodix/fingerprint/FingerprintManager$3;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/zui/fingerprint/FingerprintManager$GuidedData;I)V
    .locals 3
    .param p1, "data"    # Lcom/zui/fingerprint/FingerprintManager$GuidedData;
    .param p2, "userData"    # I

    .prologue
    .line 456
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$3;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalEnrolListener:Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$300(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$3;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalEnrolListener:Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$300(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/fingerprint/FingerprintManager$GuidedData;->getProgress()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p2, v2}, Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;->onProgress(IIZ)V

    .line 460
    :cond_0
    return-void
.end method

.method public onResult(III)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "id"    # I
    .param p3, "userData"    # I

    .prologue
    .line 464
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$3;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalEnrolListener:Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$300(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$3;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalEnrolListener:Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$300(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;->onResult(III)V

    .line 467
    :cond_0
    return-void
.end method

.method public onStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$3;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalEnrolListener:Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$300(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/goodix/fingerprint/FingerprintManager$3;->this$0:Lcom/goodix/fingerprint/FingerprintManager;

    # getter for: Lcom/goodix/fingerprint/FingerprintManager;->mLocalEnrolListener:Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;
    invoke-static {v0}, Lcom/goodix/fingerprint/FingerprintManager;->access$300(Lcom/goodix/fingerprint/FingerprintManager;)Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, p1, p2, v1}, Lcom/goodix/fingerprint/FingerprintManager$EnrolListener;->onStatus(III)V

    .line 475
    :cond_0
    return-void
.end method
