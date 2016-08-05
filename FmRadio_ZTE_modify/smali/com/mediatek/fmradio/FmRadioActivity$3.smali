.class Lcom/mediatek/fmradio/FmRadioActivity$3;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioActivity;
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
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioActivity$3;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
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
    .line 240
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$3;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$3;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    long-to-int v0, p4

    .line 242
    .local v0, "freq":I
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioActivity$3;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # invokes: Lcom/mediatek/fmradio/FmRadioActivity;->tuneToStation(I)V
    invoke-static {v1, v0}, Lcom/mediatek/fmradio/FmRadioActivity;->access$5(Lcom/mediatek/fmradio/FmRadioActivity;I)V

    .line 244
    .end local v0    # "freq":I
    :cond_0
    return-void
.end method
