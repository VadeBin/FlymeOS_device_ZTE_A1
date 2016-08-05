.class Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$2;
.super Ljava/lang/Object;
.source "NoAntennaDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$2;->this$0:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 127
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 128
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    const-string v0, "FmRx/NoAntennaDialog"

    const-string v1, "click back key, need to exit fm"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$2;->this$0:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    # getter for: Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
    invoke-static {v0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->access$0(Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;)Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;->noAntennaCancel()V

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
