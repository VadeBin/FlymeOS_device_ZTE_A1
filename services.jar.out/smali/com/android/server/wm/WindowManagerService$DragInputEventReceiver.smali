.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 822
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 823
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 827
    const/4 v3, 0x0

    .line 829
    .local v3, "handled":Z
    :try_start_0
    instance-of v7, p1, Landroid/view/MotionEvent;

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v7, :cond_3

    .line 832
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v4, v0

    .line 833
    .local v4, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 834
    .local v2, "endDrag":Z
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 835
    .local v5, "newX":F
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 837
    .local v6, "newY":F
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 865
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 866
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v7, :cond_1

    const-string v7, "WindowManager"

    const-string v8, "Drag ended; tearing down state"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 869
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 870
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 873
    :cond_2
    const/4 v3, 0x1

    .line 878
    .end local v2    # "endDrag":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newX":F
    .end local v6    # "newY":F
    :cond_3
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 880
    :goto_1
    return-void

    .line 839
    .restart local v2    # "endDrag":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "newX":F
    .restart local v6    # "newY":F
    :pswitch_0
    :try_start_2
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v7, :cond_0

    .line 840
    const-string v7, "WindowManager"

    const-string v8, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 875
    .end local v2    # "endDrag":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newX":F
    .end local v6    # "newY":F
    :catch_0
    move-exception v1

    .line 876
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "WindowManager"

    const-string v8, "Exception caught by drag handleMotion"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 878
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_1

    .line 845
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "endDrag":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "newX":F
    .restart local v6    # "newY":F
    :pswitch_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 847
    :try_start_5
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    .line 848
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 878
    .end local v2    # "endDrag":Z
    .end local v4    # "motionEvent":Landroid/view/MotionEvent;
    .end local v5    # "newX":F
    .end local v6    # "newY":F
    :catchall_1
    move-exception v7

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v7

    .line 852
    .restart local v2    # "endDrag":Z
    .restart local v4    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v5    # "newX":F
    .restart local v6    # "newY":F
    :pswitch_2
    :try_start_7
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v7, :cond_4

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got UP on move channel; dropping at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v7, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 855
    :try_start_8
    iget-object v7, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v7, v5, v6}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v2

    .line 856
    monitor-exit v8

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v7

    .line 860
    :pswitch_3
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v7, :cond_5

    const-string v7, "WindowManager"

    const-string v8, "Drag cancelled!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 861
    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 870
    :catchall_3
    move-exception v7

    :try_start_a
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
