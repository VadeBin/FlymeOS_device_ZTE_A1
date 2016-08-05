.class Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$1;
.super Ljava/lang/Object;
.source "SearchChannelsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;

    # getter for: Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;
    invoke-static {v0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->access$0(Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;)Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;->cancelSearch()V

    .line 100
    return-void
.end method
