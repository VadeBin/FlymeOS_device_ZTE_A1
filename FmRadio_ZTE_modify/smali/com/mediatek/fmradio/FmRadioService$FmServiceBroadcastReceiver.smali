.class Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioService;


# direct methods
.method private constructor <init>(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/fmradio/FmRadioService;Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;-><init>(Lcom/mediatek/fmradio/FmRadioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 270
    const-string v11, "FmRx/Service"

    const-string v12, ">>> FmRadioService.onReceive"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "action":Ljava/lang/String;
    const-string v11, "command"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "command":Ljava/lang/String;
    const-string v11, "FmRx/Service"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Action/Command: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " / "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v11, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_POWERDOWN"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 276
    const-string v11, "com.mediatek.app.mtv.POWER_ON"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 277
    const-string v11, "com.android.music.musicservicecommand"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "pause"

    .line 278
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 280
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 282
    const-string v11, "FmRx/Service"

    const-string v12, "onReceive.SOUND_POWER_DOWN_MSG. exit FM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->exitFm()V
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$7(Lcom/mediatek/fmradio/FmRadioService;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v11}, Lcom/mediatek/fmradio/FmRadioService;->stopSelf()V

    .line 286
    :cond_1
    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 288
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 290
    const-string v11, "FmRx/Service"

    const-string v12, "onReceive.ACTION_AIRPLANE_MODE_CHANGED. exit FM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v11}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 292
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const v13, 0x7f0900cc

    invoke-virtual {v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 293
    const/4 v13, 0x0

    .line 291
    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 293
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 294
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->exitFm()V
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$7(Lcom/mediatek/fmradio/FmRadioService;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v11}, Lcom/mediatek/fmradio/FmRadioService;->stopSelf()V

    .line 447
    :cond_2
    :goto_0
    const-string v11, "FmRx/Service"

    const-string v12, "<<< FmRadioService.onReceive"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_1
    return-void

    .line 297
    :cond_3
    const-string v11, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 302
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->exitFm()V
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$7(Lcom/mediatek/fmradio/FmRadioService;)V

    goto :goto_0

    .line 305
    :cond_4
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 307
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->setRdsAsync(Z)V

    goto :goto_0

    .line 309
    :cond_5
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 310
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->setRdsAsync(Z)V

    goto :goto_0

    .line 312
    :cond_6
    const-string v11, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 314
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const-string v11, "state"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_8

    const/4 v11, 0x0

    :goto_2
    invoke-static {v12, v11}, Lcom/mediatek/fmradio/FmRadioService;->access$11(Lcom/mediatek/fmradio/FmRadioService;I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->switchAntennaAsync(I)V

    .line 318
    # getter for: Lcom/mediatek/fmradio/FmRadioService;->SHORT_ANNTENNA_SUPPORT:Z
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioService;->access$13()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 319
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->switchAntenna(I)I
    invoke-static {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->access$14(Lcom/mediatek/fmradio/FmRadioService;I)I

    move-result v11

    if-nez v11, :cond_9

    const/4 v8, 0x1

    .line 321
    .local v8, "isSwitch":Z
    :goto_3
    const-string v11, "FmRx/Service"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "onReceive.switch anntenna:isWitch:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v11

    if-nez v11, :cond_a

    const/4 v9, 0x1

    .line 327
    .local v9, "plugInEarphone":Z
    :goto_4
    if-eqz v9, :cond_7

    .line 328
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->access$15(Lcom/mediatek/fmradio/FmRadioService;I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->access$16(Lcom/mediatek/fmradio/FmRadioService;Z)V

    .line 334
    :cond_7
    new-instance v3, Landroid/os/Bundle;

    const/4 v11, 0x2

    invoke-direct {v3, v11}, Landroid/os/Bundle;-><init>(I)V

    .line 335
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v11, "callback_flag"

    .line 336
    const v12, 0x101000

    .line 335
    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    const-string v12, "key_is_speaker_mode"

    .line 338
    if-eqz v9, :cond_b

    const/4 v11, 0x0

    .line 337
    :goto_5
    invoke-virtual {v3, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v11, v3}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->powerUpAutoIfNeed()V
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$18(Lcom/mediatek/fmradio/FmRadioService;)V

    goto/16 :goto_0

    .line 315
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "isSwitch":Z
    .end local v9    # "plugInEarphone":Z
    :cond_8
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 320
    :cond_9
    const/4 v8, 0x0

    goto :goto_3

    .line 324
    .restart local v8    # "isSwitch":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 338
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "plugInEarphone":Z
    :cond_b
    const/4 v11, 0x1

    goto :goto_5

    .line 345
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v8    # "isSwitch":Z
    .end local v9    # "plugInEarphone":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsServiceInited:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$19(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 346
    const-string v11, "FmRx/Service"

    .line 347
    const-string v12, "onReceive.switch anntenna:service is not init"

    .line 346
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->powerUpAutoIfNeed()V
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$18(Lcom/mediatek/fmradio/FmRadioService;)V

    goto/16 :goto_1

    .line 355
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v11

    if-nez v11, :cond_e

    .line 356
    const-string v11, "FmRx/Service"

    .line 357
    const-string v12, "onReceive.switch anntenna:need auto power up"

    .line 356
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    .line 359
    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 362
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v12

    .line 361
    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->powerUpAsync(F)V

    goto/16 :goto_0

    .line 363
    :cond_e
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mValueHeadSetPlug:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$12(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    if-ne v11, v12, :cond_2

    .line 364
    const-string v11, "FmRx/Service"

    const-string v12, "plug out earphone, need to stop fm"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v12, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I
    invoke-static {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->access$6(Lcom/mediatek/fmradio/FmRadioService;Z)I

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    .line 371
    const/16 v12, 0xd

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 372
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    .line 373
    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    .line 375
    const/16 v12, 0xf

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 376
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    .line 377
    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    .line 379
    const/16 v12, 0x9

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v12, -0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->stopFmFocusLoss(I)V
    invoke-static {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->access$8(Lcom/mediatek/fmradio/FmRadioService;I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->setSpeakerPhoneOn(Z)V

    .line 388
    new-instance v3, Landroid/os/Bundle;

    const/4 v11, 0x2

    invoke-direct {v3, v11}, Landroid/os/Bundle;-><init>(I)V

    .line 389
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v11, "callback_flag"

    .line 390
    const v12, 0x101000

    .line 389
    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 391
    const-string v11, "key_is_speaker_mode"

    .line 392
    const/4 v12, 0x0

    .line 391
    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->notifyActivityStateChanged(Landroid/os/Bundle;)V
    invoke-static {v11, v3}, Lcom/mediatek/fmradio/FmRadioService;->access$17(Lcom/mediatek/fmradio/FmRadioService;Landroid/os/Bundle;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    .line 396
    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->removeMessages(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mFmServiceHandler:Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$10(Lcom/mediatek/fmradio/FmRadioService;)Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;

    move-result-object v11

    .line 398
    const/16 v12, 0x29

    .line 399
    const-wide/32 v14, 0xea60

    .line 397
    invoke-virtual {v11, v12, v14, v15}, Lcom/mediatek/fmradio/FmRadioService$FmRadioServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 403
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_f
    const-string v11, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 404
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 406
    const-string v11, "android.bluetooth.profile.extra.STATE"

    const/4 v12, 0x0

    .line 405
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 407
    .local v5, "connectState":I
    const-string v11, "FmRx/Service"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ACTION_CONNECTION_STATE_CHANGED: connectState="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ispowerup="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v13}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 407
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->handleBtConnectState(I)V
    invoke-static {v11, v5}, Lcom/mediatek/fmradio/FmRadioService;->access$21(Lcom/mediatek/fmradio/FmRadioService;I)V

    goto/16 :goto_0

    .line 410
    .end local v5    # "connectState":I
    :cond_10
    const-string v11, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 411
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$23(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$24(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 412
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v11}, Lcom/mediatek/fmradio/FmRadioService;->startScanAsync()V

    goto/16 :goto_0

    .line 413
    :cond_11
    const-string v11, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 414
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v11}, Lcom/mediatek/fmradio/FmRadioService;->stopScan()Z

    goto/16 :goto_0

    .line 415
    :cond_12
    const-string v11, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 416
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$23(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$24(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 417
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 418
    .local v6, "curStation":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-static {v6}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->tuneStationAsync(F)V

    goto/16 :goto_0

    .line 420
    .end local v6    # "curStation":I
    :cond_13
    const-string v11, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKPREV"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 421
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$23(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$24(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 422
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 423
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v12

    const/4 v13, 0x0

    .line 422
    invoke-virtual {v11, v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->seekStationAsync(FZ)V

    goto/16 :goto_0

    .line 424
    :cond_14
    const-string v11, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SEEKNEXT"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 425
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUp:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$3(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsNativeSeeking:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$22(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsScanning:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$23(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mIsPowerUping:Z
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$24(Lcom/mediatek/fmradio/FmRadioService;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 426
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 427
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioUtils;->computeFrequency(I)F

    move-result v12

    const/4 v13, 0x1

    .line 426
    invoke-virtual {v11, v12, v13}, Lcom/mediatek/fmradio/FmRadioService;->seekStationAsync(FZ)V

    goto/16 :goto_0

    .line 428
    :cond_15
    const-string v11, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SAVEFAVOR"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    .line 429
    if-eqz v4, :cond_16

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 430
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v12}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/mediatek/fmradio/FmRadioService;->updateFavoriteStation(I)V

    goto/16 :goto_0

    .line 432
    :cond_17
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 433
    .local v7, "favorStation":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v11, v7}, Lcom/mediatek/fmradio/FmRadioService;->updateFavoriteStation(I)V

    goto/16 :goto_0

    .line 435
    .end local v7    # "favorStation":I
    :cond_18
    const-string v11, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_SHOWTOAST"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    .line 436
    if-eqz v4, :cond_2

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 437
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v11}, Lcom/mediatek/fmradio/FmRadioService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    .line 439
    const/4 v12, 0x0

    .line 437
    invoke-static {v11, v4, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 439
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 441
    :cond_19
    const-string v11, "com.mediatek.FMRadio.FmRadioWidget.update"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 442
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioWidget;->getInstance()Lcom/mediatek/fmradio/FmRadioWidget;

    move-result-object v10

    .line 443
    .local v10, "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/fmradio/FmRadioService$FmServiceBroadcastReceiver;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mCurrentStation:I
    invoke-static {v11}, Lcom/mediatek/fmradio/FmRadioService;->access$20(Lcom/mediatek/fmradio/FmRadioService;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11}, Lcom/mediatek/fmradio/FmRadioWidget;->updateWidget(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 445
    .end local v10    # "widget":Lcom/mediatek/fmradio/FmRadioWidget;
    :cond_1a
    const-string v11, "FmRx/Service"

    const-string v12, "Error: undefined action."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
