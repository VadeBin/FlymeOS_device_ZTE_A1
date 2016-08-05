.class final Lcom/zte/mifavor/preference/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;Lcom/zte/mifavor/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;
    .param p2, "x1"    # Lcom/zte/mifavor/preference/SeekBarVolumizer$1;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;-><init>(Lcom/zte/mifavor/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$200(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$200(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 271
    iget-object v0, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    iget-object v1, p0, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;->this$0:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    # getter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$200(Lcom/zte/mifavor/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # setter for: Lcom/zte/mifavor/preference/SeekBarVolumizer;->mLastProgress:I
    invoke-static {v0, v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->access$302(Lcom/zte/mifavor/preference/SeekBarVolumizer;I)I

    .line 274
    :cond_0
    return-void
.end method

.method public postUpdateSlider(I)V
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 277
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 278
    return-void
.end method
