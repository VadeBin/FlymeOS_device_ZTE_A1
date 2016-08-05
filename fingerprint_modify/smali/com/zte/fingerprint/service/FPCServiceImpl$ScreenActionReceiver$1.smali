.class Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver$1;
.super Ljava/lang/Object;
.source "FPCServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver$1;->this$1:Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver$1;->this$1:Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;

    iget-object v0, v0, Lcom/zte/fingerprint/service/FPCServiceImpl$ScreenActionReceiver;->this$0:Lcom/zte/fingerprint/service/FPCServiceImpl;

    invoke-virtual {v0}, Lcom/zte/fingerprint/service/FPCServiceImpl;->releaseFingerprint()V

    .line 263
    return-void
.end method
