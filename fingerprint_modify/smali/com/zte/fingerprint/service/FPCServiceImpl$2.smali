.class Lcom/zte/fingerprint/service/FPCServiceImpl$2;
.super Ljava/lang/Object;
.source "FPCServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/service/FPCServiceImpl;->unregisterCallback(Lcom/android/fingerprints/keyguard/IFingerprintUnlockCallback;)V
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
    .line 78
    iput-object p1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$2;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$2;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-virtual {v0}, Lcom/zte/fingerprint/service/FPCServiceImpl;->releaseFingerprint()V

    .line 82
    return-void
.end method
