.class Lcom/fingerprints/service/FingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    .line 461
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 462
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 466
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 581
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 468
    :pswitch_1
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$2(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 469
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$2(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onWaitingForInput()V

    goto :goto_0

    .line 472
    :pswitch_2
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$2(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$2(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onInput()V

    goto :goto_0

    .line 476
    :pswitch_3
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$2(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$2(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureCompleted()V

    goto :goto_0

    .line 480
    :pswitch_4
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$2(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/fingerprints/service/FingerprintManager$CaptureCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$2(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$CaptureCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/fingerprints/service/FingerprintManager$CaptureCallback;->onCaptureFailed(I)V

    goto :goto_0

    .line 484
    :pswitch_5
    iget-object v4, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v4}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 485
    iget-object v4, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v4}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 486
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_1

    .line 485
    :goto_1
    invoke-interface {v4, v5, v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onIdentified(IZ)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 486
    goto :goto_1

    .line 489
    :pswitch_6
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 490
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrolled(I)V

    goto :goto_0

    .line 497
    :pswitch_7
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # invokes: Lcom/fingerprints/service/FingerprintManager;->PackGuidedData()V
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$4(Lcom/fingerprints/service/FingerprintManager;)V

    goto/16 :goto_0

    .line 502
    :pswitch_8
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 504
    .local v1, "tmpBundle":Landroid/os/Bundle;
    const-string v2, "lastTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 505
    .local v0, "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "lastTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 510
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_9
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 511
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 512
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "nextTouch"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 513
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "nextTouch"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 518
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_a
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 520
    .restart local v1    # "tmpBundle":Landroid/os/Bundle;
    const-string v2, "maskList"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 521
    .restart local v0    # "tmpArray":[I
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskList"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 522
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "maskNumber"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 527
    .end local v0    # "tmpArray":[I
    .end local v1    # "tmpBundle":Landroid/os/Bundle;
    :pswitch_b
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 528
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "acceptance"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "reject_reason"

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 533
    :pswitch_c
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 534
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "stitched"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 538
    :pswitch_d
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 539
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "immobile"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 543
    :pswitch_e
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 544
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "next_direction"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 548
    :pswitch_f
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 549
    # getter for: Lcom/fingerprints/service/FingerprintManager;->mGuidedDataBundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/fingerprints/service/FingerprintManager;->access$5()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "progress"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 553
    :pswitch_10
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->onNoMatch()V

    goto/16 :goto_0

    .line 557
    :pswitch_11
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onEnrollmentFailed()V

    goto/16 :goto_0

    .line 561
    :pswitch_12
    const-string v2, "FingerprintManager"

    const-string v3, "finger up"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->fingerUp()V

    goto/16 :goto_0

    .line 566
    :pswitch_13
    const-string v2, "FingerprintManager"

    const-string v3, "finger down"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 568
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$1(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$IdentifyCallback;->fingerDown()V

    goto/16 :goto_0

    .line 571
    :pswitch_14
    const-string v2, "FingerprintManager"

    const-string v4, "finger onExist"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onExist(I)V

    goto/16 :goto_0

    .line 576
    :pswitch_15
    const-string v2, "FingerprintManager"

    const-string v3, "finger onRet"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/fingerprints/service/FingerprintManager$EventHandler;->this$0:Lcom/fingerprints/service/FingerprintManager;

    # getter for: Lcom/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/fingerprints/service/FingerprintManager$EnrolCallback;
    invoke-static {v2}, Lcom/fingerprints/service/FingerprintManager;->access$3(Lcom/fingerprints/service/FingerprintManager;)Lcom/fingerprints/service/FingerprintManager$EnrolCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/fingerprints/service/FingerprintManager$EnrolCallback;->onRest()V

    goto/16 :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_c
        :pswitch_4
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
