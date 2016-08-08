.class Lcom/mediatek/fmradio/FmRadioFavorite$4$1;
.super Ljava/lang/Object;
.source "FmRadioFavorite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/FmRadioFavorite$4;->onExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/fmradio/FmRadioFavorite$4;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioFavorite$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioFavorite$4$1;->this$1:Lcom/mediatek/fmradio/FmRadioFavorite$4;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite$4$1;->this$1:Lcom/mediatek/fmradio/FmRadioFavorite$4;

    # getter for: Lcom/mediatek/fmradio/FmRadioFavorite$4;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioFavorite$4;->access$0(Lcom/mediatek/fmradio/FmRadioFavorite$4;)Lcom/mediatek/fmradio/FmRadioFavorite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/fmradio/FmRadioFavorite;->finish()V

    .line 227
    return-void
.end method
