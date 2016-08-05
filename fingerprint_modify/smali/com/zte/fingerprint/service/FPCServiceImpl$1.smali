.class Lcom/zte/fingerprint/service/FPCServiceImpl$1;
.super Ljava/lang/Object;
.source "FPCServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/service/FPCServiceImpl;->registerCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
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
    .line 53
    iput-object p1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$1;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$1;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-virtual {v0}, Lcom/zte/fingerprint/service/FPCServiceImpl;->openFingerprint()V

    .line 58
    return-void
.end method
