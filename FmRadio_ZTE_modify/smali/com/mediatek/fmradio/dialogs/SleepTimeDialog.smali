.class public Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;
.super Landroid/app/DialogFragment;
.source "SleepTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;)Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;

    return-object v0
.end method

.method public static newInstance()Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;

    invoke-direct {v0}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 83
    :try_start_0
    check-cast p1, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$SleepTimeListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 93
    const v3, 0x7f0e0001

    .line 92
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "items":[Ljava/lang/String;
    new-instance v2, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    const v3, 0x7f0900ba

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;

    invoke-direct {v3, p0}, Lcom/mediatek/fmradio/dialogs/SleepTimeDialog$1;-><init>(Lcom/mediatek/fmradio/dialogs/SleepTimeDialog;)V

    invoke-virtual {v2, v1, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v2

    .line 94
    return-object v2
.end method
