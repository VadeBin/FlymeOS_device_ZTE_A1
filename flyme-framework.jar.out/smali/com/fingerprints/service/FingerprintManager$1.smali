.class Lcom/fingerprints/service/FingerprintManager$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/fingerprints/service/FingerprintManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$1;->this$0:Lcom/fingerprints/service/FingerprintManager;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$0(Lcom/fingerprints/service/FingerprintManager;)V

    .line 826
    :try_start_0
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$1;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/fingerprints/service/FingerprintManager$1;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v0}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onDisconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    goto :goto_0
.end method
