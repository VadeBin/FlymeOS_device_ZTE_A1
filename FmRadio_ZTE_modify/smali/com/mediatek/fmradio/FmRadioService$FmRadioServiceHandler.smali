.class Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
.super Landroid/os/Handler;
.source "FmRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmRadioServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioService;


# direct methods
.method public constructor <init>(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2568
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 2569
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2570
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2575
    const/4 v6, 0x0

    .line 2576
    .local v6, "isPowerup":Z
    const/4 v10, 0x1

    .line 2578
    .local v10, "isSwitch":Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 2828
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2582
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2583
    .local v2, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->handlePowerUp(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/fmradio/FmRadioService;->access$26(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    goto :goto_0

    .line 2588
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->handlePowerDown()V
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$27(Lcom/mediatek/fmradio/FmRadioService;)V

    goto :goto_0

    .line 2593
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsSpeakerUsed:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$4(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 2596
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->powerDown()Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$28(Lcom/mediatek/fmradio/FmRadioService;)Z

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->closeDevice()Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$29(Lcom/mediatek/fmradio/FmRadioService;)Z

    .line 2599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 2600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmPlayer:Landroid/media/MediaPlayer;
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$0(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/MediaPlayer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaPlayer;->release()V

    .line 2601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$1(Lcom/mediatek/fmradio/FmRadioService;Landroid/media/MediaPlayer;)V

    .line 2604
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2605
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v18, "callback_flag"

    .line 2606
    const/16 v19, 0xb

    .line 2605
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 2609
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 2610
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onExit()V

    goto/16 :goto_0

    .line 2616
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2618
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v18, "switch_anntenna_value"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 2622
    .local v17, "value":I
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$13()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->switchAntenna(I)I
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->access$14(Lcom/mediatek/fmradio/FmRadioService;I)I

    move-result v18

    if-nez v18, :cond_3

    const/4 v10, 0x1

    .line 2624
    :goto_1
    const-string v18, "FmRx/Service"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "FmServiceHandler.switch anntenna:isSwitch:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2625
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 2624
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2623
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 2631
    :cond_4
    if-nez v17, :cond_5

    .line 2632
    const-string v18, "FmRx/Service"

    .line 2633
    const-string v19, "FmServiceHandler.switch anntenna:dismiss dialog"

    .line 2632
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    const-string v18, "callback_flag"

    .line 2636
    const/16 v19, 0x4

    .line 2635
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2638
    const-string v18, "key_is_switch_anntenna"

    const/16 v19, 0x1

    .line 2637
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 2640
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 2641
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onSwitchAnntenna(Z)V

    goto/16 :goto_0

    .line 2647
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mRecordState:I
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$31(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v18

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 2648
    const-string v18, "FmRx/Service"

    .line 2649
    const-string v19, "FmServiceHandler.switch anntenna:show dialog"

    .line 2648
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    const-string v18, "callback_flag"

    .line 2651
    const/16 v19, 0x4

    .line 2650
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2653
    const-string v18, "key_is_switch_anntenna"

    .line 2654
    const/16 v19, 0x0

    .line 2652
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 2656
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 2657
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onSwitchAnntenna(Z)V

    goto/16 :goto_0

    .line 2666
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v17    # "value":I
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2667
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v18, "frequency"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v16

    .line 2668
    .local v16, "tuneStation":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->tuneStation(F)Z
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->access$32(Lcom/mediatek/fmradio/FmRadioService;F)Z

    move-result v11

    .line 2670
    .local v11, "isTune":Z
    if-nez v11, :cond_6

    .line 2672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v16

    .line 2674
    :cond_6
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "bundle":Landroid/os/Bundle;
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2675
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v18, "callback_flag"

    .line 2676
    const/16 v19, 0xf

    .line 2675
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2677
    const-string v18, "key_is_tune"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2678
    const-string v18, "key_tune_to_station"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2680
    const-string v18, "key_is_power_up"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v19, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static/range {v19 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 2682
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 2683
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onTuneFinished()V

    goto/16 :goto_0

    .line 2689
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v11    # "isTune":Z
    .end local v16    # "tuneStation":F
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2690
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$33(Lcom/mediatek/fmradio/FmRadioService;Z)V

    .line 2691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const-string v19, "frequency"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v19

    .line 2692
    const-string v20, "option"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 2691
    # invokes: Lcom/mediatek/fmradio/FmRadioService;->seekStation(FZ)F
    invoke-static/range {v18 .. v20}, Lcom/mediatek/fmradio/FmRadioService;->access$34(Lcom/mediatek/fmradio/FmRadioService;FZ)F

    move-result v14

    .line 2693
    .local v14, "seekStation":F
    const/4 v8, 0x0

    .line 2694
    .local v8, "isSeekTune":Z
    invoke-static {v14}, Lcom/mediatek/fmradio/FmRadioUtils;->computeStation(F)I

    move-result v15

    .line 2695
    .local v15, "station":I
    invoke-static {v15}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->tuneStation(F)Z
    invoke-static {v0, v14}, Lcom/mediatek/fmradio/FmRadioService;->access$32(Lcom/mediatek/fmradio/FmRadioService;F)Z

    move-result v8

    .line 2699
    :cond_7
    if-nez v8, :cond_8

    .line 2701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v14

    .line 2703
    :cond_8
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "bundle":Landroid/os/Bundle;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2704
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v18, "callback_flag"

    .line 2705
    const/16 v19, 0xf

    .line 2704
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2706
    const-string v18, "key_is_tune"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2707
    const-string v18, "key_tune_to_station"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v14}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$33(Lcom/mediatek/fmradio/FmRadioService;Z)V

    goto/16 :goto_0

    .line 2715
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v8    # "isSeekTune":Z
    .end local v14    # "seekStation":F
    .end local v15    # "station":I
    :pswitch_7
    const/4 v3, 0x0

    .line 2716
    .local v3, "channels":[I
    const/4 v12, 0x0

    .line 2717
    .local v12, "result":[I
    const/4 v13, 0x0

    .line 2718
    .local v13, "scanTuneStation":F
    const/4 v7, 0x1

    .line 2719
    .local v7, "isScan":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$35(Lcom/mediatek/fmradio/FmRadioService;Z)V

    .line 2720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    sget v19, Lcom/mediatek/fmradio/FmRadioUtils;->DEFAULT_STATION_FLOAT:F

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->powerUpFm(F)Z
    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$36(Lcom/mediatek/fmradio/FmRadioService;F)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->startScan()[I
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$37(Lcom/mediatek/fmradio/FmRadioService;)[I

    move-result-object v3

    .line 2725
    :cond_9
    if-eqz v3, :cond_c

    const/16 v18, 0x0

    aget v18, v3, v18

    const/16 v19, -0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 2726
    const-string v18, "FmRx/Service"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "user canceled scan:channels[0]="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    aget v20, v3, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    const/4 v7, 0x0

    .line 2728
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [I

    .end local v12    # "result":[I
    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v12, v18

    .line 2744
    .restart local v12    # "result":[I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsAudioFocusHeld:Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$39(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2745
    const-string v18, "FmRx/Service"

    const-string v19, "there is not power down command.set mute false"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I
    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$6(Lcom/mediatek/fmradio/FmRadioService;Z)I

    .line 2748
    :cond_a
    new-instance v2, Landroid/os/Bundle;

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2749
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v18, "callback_flag"

    .line 2750
    const/16 v19, 0xd

    .line 2749
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2751
    const-string v18, "key_tune_to_station"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v13}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2753
    const-string v18, "key_station_num"

    const/16 v19, 0x1

    aget v19, v12, v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2754
    const-string v18, "key_is_scan"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 2756
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    if-eqz v18, :cond_b

    .line 2757
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->sChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$30()Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;->onScanFinished(Landroid/os/Bundle;)V

    .line 2759
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$35(Lcom/mediatek/fmradio/FmRadioService;Z)V

    goto/16 :goto_0

    .line 2730
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->insertSearchedStation([I)[I
    invoke-static {v0, v3}, Lcom/mediatek/fmradio/FmRadioService;->access$38(Lcom/mediatek/fmradio/FmRadioService;[I)[I

    move-result-object v12

    .line 2732
    const/16 v18, 0x0

    aget v18, v12, v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v13

    .line 2733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->tuneStation(F)Z
    invoke-static {v0, v13}, Lcom/mediatek/fmradio/FmRadioService;->access$32(Lcom/mediatek/fmradio/FmRadioService;F)Z

    move-result v11

    .line 2735
    .restart local v11    # "isTune":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v4

    .line 2736
    .local v4, "defaultStation":F
    if-eqz v11, :cond_d

    :goto_3
    goto/16 :goto_2

    :cond_d
    move v13, v4

    .line 2737
    goto :goto_3

    .line 2764
    .end local v3    # "channels":[I
    .end local v4    # "defaultStation":F
    .end local v7    # "isScan":Z
    .end local v11    # "isTune":Z
    .end local v12    # "result":[I
    .end local v13    # "scanTuneStation":F
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2766
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v18, "key_audiofocus_changed"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2767
    .local v5, "focusState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->updateAudioFocus(I)V
    invoke-static {v0, v5}, Lcom/mediatek/fmradio/FmRadioService;->access$40(Lcom/mediatek/fmradio/FmRadioService;I)V

    goto/16 :goto_0

    .line 2771
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "focusState":I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2772
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const-string v19, "option"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setRds(Z)I
    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$41(Lcom/mediatek/fmradio/FmRadioService;Z)I

    goto/16 :goto_0

    .line 2776
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2777
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const-string v19, "option"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I
    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$6(Lcom/mediatek/fmradio/FmRadioService;Z)I

    goto/16 :goto_0

    .line 2781
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->activeAF()I
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$42(Lcom/mediatek/fmradio/FmRadioService;)I

    goto/16 :goto_0

    .line 2786
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->startRecording()V
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$43(Lcom/mediatek/fmradio/FmRadioService;)V

    goto/16 :goto_0

    .line 2790
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->stopRecording()Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$44(Lcom/mediatek/fmradio/FmRadioService;)Z

    goto/16 :goto_0

    .line 2794
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->startPlayback()Z
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$45(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v9

    .line 2796
    .local v9, "isStart":Z
    if-nez v9, :cond_0

    .line 2797
    new-instance v2, Landroid/os/Bundle;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 2798
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v18, "callback_flag"

    .line 2799
    const v19, 0x100110

    .line 2798
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2800
    const-string v18, "key_recording_error_type"

    .line 2801
    const/16 v19, 0x21

    .line 2800
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 2807
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v9    # "isStart":Z
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->stopPlayback()V
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$46(Lcom/mediatek/fmradio/FmRadioService;)V

    goto/16 :goto_0

    .line 2811
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2812
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const-string v19, "option"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setRecordingMode(Z)V
    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$47(Lcom/mediatek/fmradio/FmRadioService;Z)V

    goto/16 :goto_0

    .line 2816
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2817
    .restart local v2    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    const-string v19, "name"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->saveRecording(Ljava/lang/String;)V
    invoke-static/range {v18 .. v19}, Lcom/mediatek/fmradio/FmRadioService;->access$48(Lcom/mediatek/fmradio/FmRadioService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2822
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v18, v0

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->startShuttingDown()V
    invoke-static/range {v18 .. v18}, Lcom/mediatek/fmradio/FmRadioService;->access$49(Lcom/mediatek/fmradio/FmRadioService;)V

    goto/16 :goto_0

    .line 2578
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method
