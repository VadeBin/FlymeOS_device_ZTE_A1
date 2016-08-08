.class Lcom/mediatek/fmradio/FmRadioActivity$7;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 582
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity.onServiceConnected start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    check-cast p2, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-virtual {p2}, Lcom/mediatek/fmradio/FmRadioService$ServiceBinder;->getService()Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$33(Lcom/mediatek/fmradio/FmRadioActivity;Lcom/mediatek/fmradio/FmRadioService;)V

    .line 584
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 585
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: Error: can\'t get Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->finish()V

    .line 646
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mFmRadioListener:Lcom/mediatek/fmradio/FmRadioListener;
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$34(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService;->registerFmRadioListener(Lcom/mediatek/fmradio/FmRadioListener;)V

    .line 591
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isServiceInited()Z

    move-result v1

    if-nez v1, :cond_1

    .line 592
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: FM service is not init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/fmradio/FmRadioService;->initService(I)V

    .line 594
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->powerUpFm()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$35(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 645
    :goto_1
    const-string v1, "FmRx/Activity"

    const-string v2, "FmRadioActivity.onServiceConnected end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_1
    const-string v1, "FmRx/Activity"

    const-string v2, "ServiceConnection: FM service is already init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isDeviceOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 605
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isModeNormal()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 606
    const-string v1, "FmRx/Activity"

    const-string v2, "Need to power up auto for this case"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->powerUpFm()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$35(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 621
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mNeedTuneto:Z
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$37(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v2

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->tuneToStation(I)V
    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$5(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 623
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$38(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 625
    :cond_3
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->updateCurrentStation()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$39(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 626
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v0

    .line 631
    .local v0, "isPlaying":Z
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    invoke-static {v1, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$16(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 632
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->updateMenuStatus()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$40(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 633
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->updateDialogStatus()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$41(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 634
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->restoreRecorderState()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$42(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 635
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->restoreCountDownState()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$43(Lcom/mediatek/fmradio/FmRadioActivity;)V

    goto :goto_1

    .line 608
    .end local v0    # "isPlaying":Z
    :cond_4
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isPowerUp()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isModeNormal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 611
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsNeedShowNoAntennaDlg:Z
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$36(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioService;->isAntennaAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 612
    invoke-static {}, Lcom/mediatek/fmradio/FmRadioUtils;->isFmShortAntennaSupport()Z

    move-result v1

    if-nez v1, :cond_2

    .line 613
    const-string v1, "FmRx/Activity"

    const-string v2, "Need to show no antenna dialog for plug out earphone in onPause state"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->dismissNoAntennaDialog()Z
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$26(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    .line 615
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->showNoAntennaDialog()V

    goto/16 :goto_2

    .line 639
    :cond_5
    const-string v1, "FmRx/Activity"

    .line 640
    const-string v2, "ServiceConnection: service is exiting while start FM again"

    .line 639
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->exitService()V
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$44(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 642
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$7;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->finish()V

    goto/16 :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 656
    const-string v0, "FmRx/Activity"

    const-string v1, "FmRadioActivity.onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return-void
.end method
