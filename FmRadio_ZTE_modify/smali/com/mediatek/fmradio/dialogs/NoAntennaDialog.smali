.class public Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
.super Landroid/app/DialogFragment;
.source "NoAntennaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmRx/NoAntennaDialog"


# instance fields
.field private mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;)Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;

    return-object v0
.end method

.method public static newInstance()Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    invoke-direct {v0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    :try_start_0
    check-cast p1, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->mListener:Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$NoAntennaListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "builder":Lcom/zte/mifavor/widget/AlertDialog$Builder;
    const v2, 0x7f090074

    invoke-virtual {v0, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v2

    .line 96
    const v3, 0x7f090055

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v2

    .line 97
    const v3, 0x104000a

    .line 98
    new-instance v4, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$1;

    invoke-direct {v4, p0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$1;-><init>(Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;)V

    .line 97
    invoke-virtual {v2, v3, v4}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    .line 122
    .local v1, "d":Lcom/zte/mifavor/widget/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    new-instance v2, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$2;

    invoke-direct {v2, p0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog$2;-><init>(Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;)V

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 135
    return-object v1
.end method
