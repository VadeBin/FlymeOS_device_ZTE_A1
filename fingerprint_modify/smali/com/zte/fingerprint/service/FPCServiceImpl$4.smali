.class Lcom/zte/fingerprint/service/FPCServiceImpl$4;
.super Ljava/lang/Object;
.source "FPCServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/service/FPCServiceImpl;->unregisterFingerActionCallback(Lcom/android/fingerprints/keyguard/IFingerActionCallback;)V
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
    .line 120
    iput-object p1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$4;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$4;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-virtual {v0}, Lcom/zte/fingerprint/service/FPCServiceImpl;->releaseFingerprint()V

    .line 124
    return-void
.end method
