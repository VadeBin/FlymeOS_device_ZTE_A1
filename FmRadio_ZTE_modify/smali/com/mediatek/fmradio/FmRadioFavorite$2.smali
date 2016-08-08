.class Lcom/mediatek/fmradio/FmRadioFavorite$2;
.super Ljava/lang/Object;
.source "FmRadioFavorite.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/FmRadioFavorite;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioFavorite;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioFavorite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioFavorite$2;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 164
    .line 165
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v3, 0x7f06009e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 164
    check-cast v2, Landroid/widget/TextView;

    .line 166
    .local v2, "textView":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 168
    .local v1, "frequency":F
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 169
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioFavorite$2;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    const-string v4, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_TUNESTATION"

    .line 174
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioUtils;->computeStation(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    # invokes: Lcom/mediatek/fmradio/FmRadioFavorite;->sendBroadcastToFmRadioService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5}, Lcom/mediatek/fmradio/FmRadioFavorite;->access$1(Lcom/mediatek/fmradio/FmRadioFavorite;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method
