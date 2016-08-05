.class Lcom/mediatek/fmradio/FMRadioEngineer$2;
.super Ljava/lang/Object;
.source "FMRadioEngineer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    :pswitch_0
    const-string v0, "FmRx/Activity"

    const-string v1, "btn stop: CLICK!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 254
    const-string v0, "FmRx/Activity"

    const-string v1, "mService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    const/16 v1, 0x36e

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$1(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 217
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    const/16 v1, 0x37d

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$1(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 220
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    const/16 v1, 0x3a2

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$1(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 223
    :pswitch_4
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    const/16 v1, 0x3b6

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$1(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 226
    :pswitch_5
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    const/16 v1, 0x3dd

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$1(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 229
    :pswitch_6
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    const/16 v1, 0x3e5

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->tuneToStation(I)V
    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$1(Lcom/mediatek/fmradio/FMRadioEngineer;I)V

    goto :goto_0

    .line 238
    :pswitch_7
    const-string v0, "FmRx/Activity"

    const-string v1, "btn pass_button: CLICK!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mIsPlaying:Z
    invoke-static {v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$2(Lcom/mediatek/fmradio/FMRadioEngineer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->exitService()V
    invoke-static {v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$3(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    goto :goto_0

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # invokes: Lcom/mediatek/fmradio/FMRadioEngineer;->refreshRecordNotIdle()V
    invoke-static {v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$5(Lcom/mediatek/fmradio/FMRadioEngineer;)V

    .line 258
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->stopRecordingAsync()V

    .line 259
    iget-object v0, p0, Lcom/mediatek/fmradio/FMRadioEngineer$2;->this$0:Lcom/mediatek/fmradio/FMRadioEngineer;

    # getter for: Lcom/mediatek/fmradio/FMRadioEngineer;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v0}, Lcom/mediatek/fmradio/FMRadioEngineer;->access$4(Lcom/mediatek/fmradio/FMRadioEngineer;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioService;->stopPlaybackAsync()V

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x7f06005f
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
