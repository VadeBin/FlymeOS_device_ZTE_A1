.class Landroid/view/ViewRootImpl$4;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->loadSystemProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 6157
    iput-object p1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x17

    const/4 v4, 0x0

    .line 6161
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    const-string/jumbo v2, "viewroot.profile_rendering"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Landroid/view/ViewRootImpl;->mProfileRendering:Z
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$2702(Landroid/view/ViewRootImpl;Z)Z

    .line 6162
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;Z)V

    .line 6165
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    const-string v2, "config.disable_media"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Landroid/view/ViewRootImpl;->mMediaDisabled:Z
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$2802(Landroid/view/ViewRootImpl;Z)Z

    .line 6168
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_0

    .line 6169
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v1}, Landroid/view/HardwareRenderer;->loadSystemProperties()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6170
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 6175
    :cond_0
    const-string v1, "debug.layout"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 6176
    .local v0, "layout":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    if-eq v0, v1, :cond_1

    .line 6177
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mDebugLayout:Z

    .line 6178
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6179
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v5, v2, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 6184
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "goldfish"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    # setter for: Landroid/view/ViewRootImpl;->mIsEmulator:Z
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$2902(Landroid/view/ViewRootImpl;Z)Z

    .line 6185
    iget-object v1, p0, Landroid/view/ViewRootImpl$4;->this$0:Landroid/view/ViewRootImpl;

    const-string/jumbo v2, "ro.emulator.circular"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Landroid/view/ViewRootImpl;->mIsCircularEmulator:Z
    invoke-static {v1, v2}, Landroid/view/ViewRootImpl;->access$3002(Landroid/view/ViewRootImpl;Z)Z

    .line 6187
    return-void
.end method
