.class Lcom/android/server/display/WifiDisplayController$29;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    .prologue
    .line 3657
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3660
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mLatencyProfiling:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$9300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # getter for: Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6000(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3661
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$29;->this$0:Lcom/android/server/display/WifiDisplayController;

    # invokes: Lcom/android/server/display/WifiDisplayController;->startProfilingInfo()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$9700(Lcom/android/server/display/WifiDisplayController;)V

    .line 3663
    :cond_0
    return-void
.end method
