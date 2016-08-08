.class public Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;
.super Landroid/app/DialogFragment;
.source "SwitchFreqDialog.java"

# interfaces
.implements Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;
    }
.end annotation


# static fields
.field private static final STATION_FREQ:Ljava/lang/String; = "station_freq"


# instance fields
.field private mListener:Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;

    .line 46
    return-void
.end method

.method public static newInstance(I)Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;
    .locals 3
    .param p0, "stationFreq"    # I

    .prologue
    .line 52
    new-instance v1, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;

    invoke-direct {v1}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;-><init>()V

    .line 53
    .local v1, "fragment":Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "station_freq"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v1, v0}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    :try_start_0
    check-cast p1, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "station_freq"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, "stationFreq":I
    new-instance v1, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;

    invoke-virtual {p0}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x64

    invoke-direct {v1, v2, v3, p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;-><init>(Landroid/content/Context;ILcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;)V

    return-object v1
.end method

.method public onFrequencySet(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;I)V
    .locals 2
    .param p1, "view"    # Lcom/mediatek/fmradio/dialogs/FrequencyPicker;
    .param p2, "frequency"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->mListener:Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;

    div-int/lit8 v1, p2, 0x64

    invoke-interface {v0, v1}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;->switchFreqDone(I)V

    .line 84
    return-void
.end method
