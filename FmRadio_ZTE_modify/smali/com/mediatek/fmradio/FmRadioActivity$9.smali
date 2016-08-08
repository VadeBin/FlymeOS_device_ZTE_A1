.class Lcom/mediatek/fmradio/FmRadioActivity$9;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Lcom/mediatek/fmradio/FreqSelectionBar$OnFrequencyChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/FmRadioActivity;->registerButtonClickListener()V
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
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioActivity$9;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFreqChange(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$9;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$9;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$9;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshStationUI(I)V
    invoke-static {v0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$19(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 2032
    :cond_0
    return-void
.end method

.method public onFreqTun(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$9;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$9;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$9;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->tuneToStation(I)V
    invoke-static {v0, p1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$5(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 2038
    :cond_0
    return-void
.end method
