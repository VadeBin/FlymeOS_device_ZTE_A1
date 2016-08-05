.class Lcom/mediatek/fmradio/FreqSelectionBar$1;
.super Landroid/os/Handler;
.source "FreqSelectionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FreqSelectionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FreqSelectionBar;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FreqSelectionBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FreqSelectionBar$1;->this$0:Lcom/mediatek/fmradio/FreqSelectionBar;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar$1;->this$0:Lcom/mediatek/fmradio/FreqSelectionBar;

    # getter for: Lcom/mediatek/fmradio/FreqSelectionBar;->mOnFrequencyChangeCallBack:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;
    invoke-static {v0}, Lcom/mediatek/fmradio/FreqSelectionBar;->access$0(Lcom/mediatek/fmradio/FreqSelectionBar;)Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar$1;->this$0:Lcom/mediatek/fmradio/FreqSelectionBar;

    # getter for: Lcom/mediatek/fmradio/FreqSelectionBar;->mOnFrequencyChangeCallBack:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;
    invoke-static {v0}, Lcom/mediatek/fmradio/FreqSelectionBar;->access$0(Lcom/mediatek/fmradio/FreqSelectionBar;)Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar$1;->this$0:Lcom/mediatek/fmradio/FreqSelectionBar;

    # getter for: Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I
    invoke-static {v1}, Lcom/mediatek/fmradio/FreqSelectionBar;->access$1(Lcom/mediatek/fmradio/FreqSelectionBar;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;->onFreqChange(I)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar$1;->this$0:Lcom/mediatek/fmradio/FreqSelectionBar;

    # getter for: Lcom/mediatek/fmradio/FreqSelectionBar;->mOnFrequencyChangeCallBack:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;
    invoke-static {v0}, Lcom/mediatek/fmradio/FreqSelectionBar;->access$0(Lcom/mediatek/fmradio/FreqSelectionBar;)Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mediatek/fmradio/FreqSelectionBar$1;->this$0:Lcom/mediatek/fmradio/FreqSelectionBar;

    # getter for: Lcom/mediatek/fmradio/FreqSelectionBar;->mOnFrequencyChangeCallBack:Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;
    invoke-static {v0}, Lcom/mediatek/fmradio/FreqSelectionBar;->access$0(Lcom/mediatek/fmradio/FreqSelectionBar;)Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/fmradio/FreqSelectionBar$1;->this$0:Lcom/mediatek/fmradio/FreqSelectionBar;

    # getter for: Lcom/mediatek/fmradio/FreqSelectionBar;->mCurrFreq:I
    invoke-static {v1}, Lcom/mediatek/fmradio/FreqSelectionBar;->access$1(Lcom/mediatek/fmradio/FreqSelectionBar;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;->onFreqTun(I)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
