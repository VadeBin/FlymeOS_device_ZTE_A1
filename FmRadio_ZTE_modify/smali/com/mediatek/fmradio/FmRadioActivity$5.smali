.class Lcom/mediatek/fmradio/FmRadioActivity$5;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 360
    const-string v0, "FmRx/Activity"

    const-string v1, "invalid view id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_0
    return-void

    .line 326
    :sswitch_0
    const-string v0, "FmRx/Activity"

    const-string v1, "onClick AddToFavorite start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->updateFavoriteStation()V
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$7(Lcom/mediatek/fmradio/FmRadioActivity;)V

    .line 328
    const-string v0, "FmRx/Activity"

    const-string v1, "onClick AddToFavorite end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :sswitch_1
    const-string v1, "FmRx/Activity"

    const-string v2, "onClick PrevStation"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v2

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->seekStation(IZ)V
    invoke-static {v1, v2, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$9(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V

    goto :goto_0

    .line 339
    :sswitch_2
    const-string v0, "FmRx/Activity"

    const-string v2, "onClick NextStation"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v2

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->seekStation(IZ)V
    invoke-static {v0, v2, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$9(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V

    goto :goto_0

    .line 346
    :sswitch_3
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioService;->isSpeakerUsed()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->setSpeakerPhoneOn(Z)V
    invoke-static {v2, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$10(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 350
    :sswitch_4
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    invoke-static {v0, v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$11(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 351
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$12(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v2

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$13(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V

    goto :goto_0

    .line 355
    :sswitch_5
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    invoke-static {v1, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$11(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 356
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mCurrentStation:I
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$8(Lcom/mediatek/fmradio/FmRadioActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$5;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$12(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v2

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$13(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V

    goto :goto_0

    .line 324
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060081 -> :sswitch_1
        0x7f060082 -> :sswitch_2
        0x7f060086 -> :sswitch_3
        0x7f060087 -> :sswitch_0
        0x7f060094 -> :sswitch_4
        0x7f060095 -> :sswitch_5
    .end sparse-switch
.end method
