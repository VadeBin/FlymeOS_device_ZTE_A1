.class final Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .line 283
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 284
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 289
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$200(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$400(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$400(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$500(Lcom/zte/mifavor/preference/SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 291
    .local v0, "volume":I
    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$Observer;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mUiHandler:Lcom/zte/mifavor/preference/SeekBarVolumizer$H;
    invoke-static {v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$600(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Lcom/zte/mifavor/preference/SeekBarVolumizer$H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;->postUpdateSlider(I)V

    .line 293
    .end local v0    # "volume":I
    :cond_0
    return-void
.end method
