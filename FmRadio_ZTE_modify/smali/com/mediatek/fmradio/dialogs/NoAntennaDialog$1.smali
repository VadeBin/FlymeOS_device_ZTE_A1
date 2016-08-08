.class Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$1;
.super Ljava/lang/Object;
.source "NoAntennaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    # getter for: Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
    invoke-static {v0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->access$0(Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;)Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;->noAntennaCancel()V

    .line 103
    return-void
.end method
