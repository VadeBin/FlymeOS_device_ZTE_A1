.class Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;
.super Ljava/lang/Object;
.source "SleepTimeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 98
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 99
    const v3, 0x7f0e0001

    .line 98
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "items":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v2, v0

    if-gt p2, v2, :cond_0

    .line 101
    aget-object v2, v0, p2

    .line 102
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 103
    .local v1, "minutes":I
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;->this$0:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;

    # getter for: Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;
    invoke-static {v2}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->access$0(Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;)Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;->sleepTimeBegin(I)V

    .line 105
    .end local v1    # "minutes":I
    :cond_0
    return-void
.end method
