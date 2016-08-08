.class Lcom/mediatek/fmradio/FMRadioEngineer$4;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 470
    const-string v1, "FmRx/Activity"

    const-string v2, "FMRadioEngineer.onServiceConnected start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    check-cast p2, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;->getService()Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$23(Lcom/mediatek/fmradio/FMRadioEngineer;Lcom/mediatek/fmradio/FmRadioService;)V

    .line 472
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 473
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: Error: can\'t get Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->finish()V

    .line 525
    :goto_0
    return-void

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;
    invoke-static {v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$24(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService;->registerFmRadioListener(Lcom/mediatek/fmradio/FmRadioListener;)V

    .line 479
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isServiceInited()Z

    move-result v1

    if-nez v1, :cond_1

    .line 480
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: FM service is not init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$16(Lcom/mediatek/fmradio/FMRadioEngineer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService;->initService(I)V

    .line 482
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->powerUpFm()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$25(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 524
    :goto_1
    const-string v1, "FmRx/Activity"

    const-string v2, "FMRadioEngineer.onServiceConnected end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_1
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: FM service is already init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isDeviceOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 491
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isModeNormal()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    const-string v1, "FmRx/Activity"

    const-string v2, "Need to power up auto for this case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->powerUpFm()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$25(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 498
    :cond_2
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mNeedTuneto:Z
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$26(Lcom/mediatek/fmradio/FMRadioEngineer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 499
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    iget-object v2, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$16(Lcom/mediatek/fmradio/FMRadioEngineer;)I

    move-result v2

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$1(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    .line 500
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$27(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V

    .line 502
    :cond_3
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->updateCurrentStation()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$28(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 503
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v0

    .line 508
    .local v0, "isPlaying":Z
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    invoke-static {v1, v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$7(Lcom/mediatek/fmradio/FMRadioEngineer;Z)V

    .line 509
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->updateMenuStatus()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$29(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 510
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->updateDialogStatus()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$30(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 514
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->updateRds()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$31(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 515
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->restoreRecorderState()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$32(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    goto :goto_1

    .line 519
    .end local v0    # "isPlaying":Z
    :cond_4
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: service is exiting while start FM again"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->exitService()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$3(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 521
    iget-object v1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$4;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->finish()V

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 534
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioEngineer.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-void
.end method
