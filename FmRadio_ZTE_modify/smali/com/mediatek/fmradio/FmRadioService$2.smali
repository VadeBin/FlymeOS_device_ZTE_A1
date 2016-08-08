.class Lcom/mediatek/fmradio/FmRadioService$2;
.super Ljava/lang/Object;
.source "FmRadioService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioService;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioService$2;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    .line 2261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 2270
    const-string v0, "FmRx/Service"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFocusChange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    packed-switch p1, :pswitch_data_0

    .line 2300
    :pswitch_0
    const-string v0, "FmRx/Service"

    .line 2301
    const-string v1, "AudioFocus: Audio focus change, but not need handle"

    .line 2300
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :goto_0
    return-void

    .line 2273
    :pswitch_1
    monitor-enter p0

    .line 2274
    :try_start_0
    const-string v0, "FmRx/Service"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService$2;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioService;->access$5(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "AudioFmPreStop=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2276
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService$2;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->access$6(Lcom/mediatek/fmradio/FmRadioService;Z)I

    .line 2277
    const-string v0, "FmRx/Service"

    const-string v1, "onAudioFocusChange.setParameters end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService$2;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->exitFm()V
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioService;->access$7(Lcom/mediatek/fmradio/FmRadioService;)V

    .line 2279
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService$2;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->stopSelf()V

    .line 2273
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2284
    :pswitch_2
    monitor-enter p0

    .line 2285
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService$2;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    # getter for: Lcom/mediatek/fmradio/FmRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioService;->access$5(Lcom/mediatek/fmradio/FmRadioService;)Landroid/media/AudioManager;

    move-result-object v0

    const-string v1, "AudioFmPreStop=1"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2286
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService$2;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->setMute(Z)I
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->access$6(Lcom/mediatek/fmradio/FmRadioService;Z)I

    .line 2287
    const-string v0, "FmRx/Service"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService$2;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, -0x2

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->stopFmFocusLoss(I)V
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->access$8(Lcom/mediatek/fmradio/FmRadioService;I)V

    .line 2284
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2293
    :pswitch_3
    monitor-enter p0

    .line 2294
    :try_start_2
    const-string v0, "FmRx/Service"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioService$2;->this$0:Lcom/mediatek/fmradio/FmRadioService;

    const/4 v1, 0x1

    # invokes: Lcom/mediatek/fmradio/FmRadioService;->updateAudioFocusAync(I)V
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioService;->access$9(Lcom/mediatek/fmradio/FmRadioService;I)V

    .line 2293
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 2271
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
