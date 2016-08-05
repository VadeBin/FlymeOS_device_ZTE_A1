.class final Landroid/view/ViewRootImpl$WindowInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 6643
    iput-object p1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    .line 6644
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 6645
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 6678
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 6679
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 6680
    return-void
.end method

.method public onBatchedInputEventPending()V
    .locals 3

    .prologue
    .line 6666
    # getter for: Landroid/view/ViewRootImpl;->DEBUG_INPUT:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$1400()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_KEY:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$900()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_MOTION:Z
    invoke-static {}, Landroid/view/ViewRootImpl;->access$3600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6667
    :cond_0
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBatchedInputEventPending: this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6669
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-eqz v0, :cond_2

    .line 6670
    invoke-super {p0}, Landroid/view/InputEventReceiver;->onBatchedInputEventPending()V

    .line 6674
    :goto_0
    return-void

    .line 6672
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    goto :goto_0
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 6651
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 6652
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    # setter for: Landroid/view/ViewRootImpl;->mCurrentKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$3202(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 6653
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Landroid/view/ViewRootImpl;->mKeyEventStartTime:J
    invoke-static {v0, v2, v3}, Landroid/view/ViewRootImpl;->access$3302(Landroid/view/ViewRootImpl;J)J

    .line 6654
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    const-string v1, "1: Start event from input"

    # setter for: Landroid/view/ViewRootImpl;->mKeyEventStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$1302(Landroid/view/ViewRootImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 6661
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->processEventForMoveWinIfNeed(Landroid/view/InputEvent;)V

    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 6662
    return-void

    .line 6656
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    # setter for: Landroid/view/ViewRootImpl;->mCurrentMotion:Landroid/view/MotionEvent;
    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->access$3402(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 6657
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Landroid/view/ViewRootImpl;->mMotionEventStartTime:J
    invoke-static {v0, v2, v3}, Landroid/view/ViewRootImpl;->access$3502(Landroid/view/ViewRootImpl;J)J

    .line 6658
    iget-object v0, p0, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->this$0:Landroid/view/ViewRootImpl;

    const-string v1, "1: Start event from input"

    # setter for: Landroid/view/ViewRootImpl;->mMotionEventStatus:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$1502(Landroid/view/ViewRootImpl;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
