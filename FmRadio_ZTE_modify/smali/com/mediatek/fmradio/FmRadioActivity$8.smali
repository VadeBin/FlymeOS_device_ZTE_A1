.class Lcom/mediatek/fmradio/FmRadioActivity$8;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioActivity$8;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    .line 2019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2021
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$8;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$11(Lcom/mediatek/fmradio/FmRadioActivity;Z)V

    .line 2022
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$8;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$6(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 2023
    .local v0, "freq":I
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$8;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioActivity$8;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsFavorBarOpened:Z
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$12(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v2

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->refreshFavorUI(IZ)V
    invoke-static {v1, v0, v2}, Lcom/mediatek/fmradio/FmRadioActivity;->access$13(Lcom/mediatek/fmradio/FmRadioActivity;IZ)V

    .line 2024
    return-void
.end method
