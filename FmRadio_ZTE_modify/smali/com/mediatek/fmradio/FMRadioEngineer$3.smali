.class Lcom/mediatek/fmradio/FMRadioEngineer$3;
.super Landroid/os/Handler;
.source "FMRadioEngineer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FMRadioEngineer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FMRadioEngineer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    .line 269
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 272
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "mHandler.handleMessage: what = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 273
    const-string v22, ",hashcode:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v22, v0

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mHandler:Landroid/os/Handler;
    invoke-static/range {v22 .. v22}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$0(Lcom/mediatek/fmradio/FMRadioEngineer;)Landroid/os/Handler;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->hashCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 272
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 440
    const-string v20, "FmRx/Activity"

    const-string v21, "invalid message"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_0
    :goto_0
    const-string v20, "FmRx/Activity"

    const-string v21, "handleMessage"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_1
    return-void

    .line 277
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->refreshTimeText()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$6(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    goto :goto_0

    .line 281
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 283
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_power_up"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 284
    .local v8, "isPowerup":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$7(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V

    .line 285
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "updateFMState: FMRadio is powerup = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->stopAnimation()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$8(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 287
    if-nez v8, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v21, v0

    const v22, 0x7f090086

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$9(Lcom/mediatek/fmradio/FMRadioEngineer;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v8    # "isPowerup":Z
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 299
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_switch_anntenna"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 300
    .local v11, "isSwitch":Z
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "[FMRadioEngineer.mHandler] swtich antenna: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-nez v11, :cond_2

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mIsActivityForeground:Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$10(Lcom/mediatek/fmradio/FMRadioEngineer;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->dismissNoAntennaDialog()Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$11(Lcom/mediatek/fmradio/FMRadioEngineer;)Z

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->showNoAntennaDialog()V

    .line 309
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->stopAnimation()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$8(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->refreshActionMenuPower(Z)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$13(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V

    goto/16 :goto_0

    .line 306
    :cond_1
    const-string v20, "FmRx/Activity"

    const-string v21, "need show no antenna dialog after onResume:"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$12(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V

    goto :goto_2

    .line 313
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$12(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->dismissNoAntennaDialog()Z
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$11(Lcom/mediatek/fmradio/FMRadioEngineer;)Z

    goto/16 :goto_0

    .line 319
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v11    # "isSwitch":Z
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 321
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_power_down"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 322
    .local v7, "isPowerdown":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v21, v0

    if-eqz v7, :cond_3

    const/16 v20, 0x0

    :goto_3
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$7(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V

    goto/16 :goto_0

    :cond_3
    const/16 v20, 0x1

    goto :goto_3

    .line 327
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v7    # "isPowerdown":Z
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 328
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_tune"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 329
    .local v18, "tuneFinish":Z
    const-string v20, "key_is_power_up"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 332
    .local v6, "isPowerUp":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$2(Lcom/mediatek/fmradio/FMRadioEngineer;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$2(Lcom/mediatek/fmradio/FMRadioEngineer;)Z

    move-result v6

    .end local v6    # "isPowerUp":Z
    :cond_4
    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$7(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->stopAnimation()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$8(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$14(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V

    .line 337
    const-string v20, "key_tune_to_station"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    .line 338
    .local v4, "frequency":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->computeStation(F)I

    move-result v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$15(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$16(Lcom/mediatek/fmradio/FMRadioEngineer;)I

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->refreshStationUI(I)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$17(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    .line 343
    if-nez v18, :cond_0

    .line 344
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "mHandler.tune: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 352
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "frequency":F
    .end local v18    # "tuneFinish":Z
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 354
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_scan"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 355
    .local v9, "isScan":Z
    const-string v20, "key_tune_to_station"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 356
    .local v19, "tuneToStation":I
    const-string v20, "key_station_num"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 358
    .local v16, "searchedNum":I
    if-nez v9, :cond_5

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->dismissSearchDialog()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$18(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 360
    const-string v20, "FmRx/Activity"

    const-string v21, "mHandler.scan canceled. not enter to channel list."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 364
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$15(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v21, v0

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$16(Lcom/mediatek/fmradio/FMRadioEngineer;)I

    move-result v21

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->refreshStationUI(I)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$17(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->dismissSearchDialog()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$18(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 370
    if-nez v16, :cond_6

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v21, v0

    const v22, 0x7f090067

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v21

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$9(Lcom/mediatek/fmradio/FMRadioEngineer;Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 375
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->enterChannelList()V
    invoke-static/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$19(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v22, v0

    const v23, 0x7f090066

    invoke-virtual/range {v22 .. v23}, Lcom/mediatek/fmradio/FMRadioEngineer;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 378
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 377
    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V
    invoke-static/range {v20 .. v21}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$9(Lcom/mediatek/fmradio/FMRadioEngineer;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 382
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v9    # "isScan":Z
    .end local v16    # "searchedNum":I
    .end local v19    # "tuneToStation":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/fmradio/FMRadioEngineer;->finish()V

    goto/16 :goto_0

    .line 386
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 387
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_rds_station"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 388
    .local v13, "rdsStation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->refreshStationUI(I)V
    invoke-static {v0, v13}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$17(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    goto/16 :goto_0

    .line 393
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v13    # "rdsStation":I
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 394
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v17, ""

    .line 395
    .local v17, "text":Ljava/lang/String;
    const-string v20, "key_ps_info"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 396
    .local v12, "psString":Ljava/lang/String;
    const-string v20, "key_rt_info"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, "rtString":Ljava/lang/String;
    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_7

    .line 398
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 400
    :cond_7
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_9

    .line 401
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_8

    .line 402
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "  "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 404
    :cond_8
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 406
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->showRds(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$20(Lcom/mediatek/fmradio/FMRadioEngineer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 410
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v12    # "psString":Ljava/lang/String;
    .end local v15    # "rtString":Ljava/lang/String;
    .end local v17    # "text":Ljava/lang/String;
    :sswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 412
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_recording_state"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 413
    .local v14, "recorderState":I
    const-string v20, "FmRx/Activity"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "FMRadioEngineer.mHandler: recorderState = "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 413
    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->updateRecordingState(I)V
    invoke-static {v0, v14}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$21(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    goto/16 :goto_0

    .line 419
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v14    # "recorderState":I
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 421
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_recording_error_type"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 422
    .local v3, "errorState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/fmradio/FMRadioEngineer$3;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->updateRecorderError(I)V
    invoke-static {v0, v3}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$22(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    goto/16 :goto_0

    .line 426
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "errorState":I
    :sswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 428
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_recording_mode"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 430
    .local v5, "isInRecordingMode":Z
    goto/16 :goto_0

    .line 433
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "isInRecordingMode":Z
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 435
    .restart local v2    # "bundle":Landroid/os/Bundle;
    const-string v20, "key_is_speaker_mode"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 437
    .local v10, "isSpeakerMode":Z
    goto/16 :goto_0

    .line 275
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xd -> :sswitch_5
        0xf -> :sswitch_4
        0x65 -> :sswitch_0
        0x100010 -> :sswitch_7
        0x100011 -> :sswitch_8
        0x100100 -> :sswitch_8
        0x100101 -> :sswitch_9
        0x100110 -> :sswitch_a
        0x100111 -> :sswitch_b
        0x101000 -> :sswitch_c
    .end sparse-switch
.end method
