.class Lcom/android/server/power/PowerManagerService$BinderService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$BinderService;->shutdownOrRebootInternalForZTE(ZLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;

.field final synthetic val$confirm:Z


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;Z)V
    .locals 0

    .prologue
    .line 3762
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iput-boolean p2, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$confirm:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3765
    monitor-enter p0

    .line 3766
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2400(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$confirm:Z

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 3767
    monitor-exit p0

    .line 3768
    return-void

    .line 3767
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
