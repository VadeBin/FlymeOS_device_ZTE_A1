.class public Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;
.super Landroid/app/DialogFragment;
.source "DeleteStationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;
    }
.end annotation


# static fields
.field private static final STATION_FREQ:Ljava/lang/String; = "station_freq"


# instance fields
.field private mListener:Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;->mListener:Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;)Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;->mListener:Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;

    return-object v0
.end method

.method public static newInstance(I)Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;
    .locals 3
    .param p0, "stationFreq"    # I

    .prologue
    .line 64
    new-instance v1, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;

    invoke-direct {v1}, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;-><init>()V

    .line 65
    .local v1, "fragment":Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "station_freq"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v1, v0}, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    :try_start_0
    check-cast p1, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;->mListener:Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "station_freq"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "stationFreq":I
    new-instance v1, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    const v2, 0x7f0900c9

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 97
    const v2, 0x7f090058

    new-instance v3, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$1;-><init>(Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;I)V

    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 102
    const v2, 0x7f090059

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v1

    .line 94
    return-object v1
.end method
