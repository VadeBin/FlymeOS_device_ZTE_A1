.class public Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "FrequencyPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;
    }
.end annotation


# static fields
.field private static final FREQUENCY:Ljava/lang/String; = "FREQUENCY"

.field private static final FREQ_MAX:Ljava/lang/String; = "FREQ_MAX"

.field private static final FREQ_MIN:Ljava/lang/String; = "FREQ_MIN"

.field private static final FREQ_STEP:Ljava/lang/String; = "FREQ_STEP"


# instance fields
.field private final mCallBack:Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;

.field private mChannelSpacing:I

.field private final mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

.field private mMaxFrequency:I

.field private mMinFrequency:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "frequency"    # I
    .param p4, "callback"    # Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 71
    const v0, 0x155cc

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMinFrequency:I

    .line 72
    const v0, 0x1a5e0

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMaxFrequency:I

    .line 73
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mChannelSpacing:I

    .line 75
    div-int/lit16 v7, p3, 0x3e8

    .line 76
    .local v7, "MHz":I
    rem-int/lit16 v0, p3, 0x3e8

    div-int/lit8 v6, v0, 0x64

    .line 77
    .local v6, "KHz":I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FM - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iput-object p4, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mCallBack:Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;

    .line 80
    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 81
    const v0, 0x7f090059

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 88
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 87
    check-cast v8, Landroid/view/LayoutInflater;

    .line 89
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f030042

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 90
    .local v9, "view":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->setView(Landroid/view/View;)V

    .line 92
    const v0, 0x7f06009c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    .line 91
    iput-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    .line 93
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMinFrequency:I

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMaxFrequency:I

    .line 95
    iget v3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mChannelSpacing:I

    move v4, p3

    move-object v5, p0

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->init(IIIILcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "fmRadio"

    const-string v1, "Failed to find ID: R.id.frequencyPicker"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frequency"    # I
    .param p3, "callback"    # Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;

    .prologue
    .line 62
    const v0, 0x103047d

    .line 63
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;-><init>(Landroid/content/Context;IILcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;)V

    .line 64
    return-void
.end method

.method private reUpdatePreset()V
    .locals 1

    .prologue
    .line 102
    const v0, 0x155cc

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMinFrequency:I

    .line 103
    const v0, 0x1a5e0

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMaxFrequency:I

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mChannelSpacing:I

    .line 105
    return-void
.end method


# virtual methods
.method public UpdateFrequency(I)V
    .locals 6
    .param p1, "frequency"    # I

    .prologue
    .line 108
    div-int/lit16 v1, p1, 0x3e8

    .line 109
    .local v1, "MHz":I
    rem-int/lit16 v2, p1, 0x3e8

    div-int/lit8 v0, v2, 0x64

    .line 110
    .local v0, "KHz":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FM - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-direct {p0}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->reUpdatePreset()V

    .line 112
    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    iget v3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMinFrequency:I

    .line 113
    iget v4, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMaxFrequency:I

    iget v5, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mChannelSpacing:I

    .line 112
    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->updateFrequency(IIII)V

    .line 115
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mCallBack:Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->clearFocus()V

    .line 120
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getFrequency()I

    move-result v0

    .line 121
    .local v0, "frequency":I
    iget-object v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mCallBack:Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;

    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    invoke-interface {v1, v2, v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog$OnFrequencySetListener;->onFrequencySet(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;I)V

    .line 123
    .end local v0    # "frequency":I
    :cond_0
    return-void
.end method

.method public onFrequencyChanged(Lcom/mediatek/fmradio/dialogs/FrequencyPicker;I)V
    .locals 0
    .param p1, "view"    # Lcom/mediatek/fmradio/dialogs/FrequencyPicker;
    .param p2, "frequency"    # I

    .prologue
    .line 126
    invoke-virtual {p0, p2}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->UpdateFrequency(I)V

    .line 127
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string v0, "FREQUENCY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 143
    .local v4, "frequency":I
    const-string v0, "FREQ_MIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMinFrequency:I

    .line 144
    const-string v0, "FREQ_MAX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMaxFrequency:I

    .line 145
    const-string v0, "FREQ_STEP"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mChannelSpacing:I

    .line 146
    iget-object v0, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    iget v1, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMinFrequency:I

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMaxFrequency:I

    iget v3, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mChannelSpacing:I

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->init(IIIILcom/mediatek/fmradio/dialogs/FrequencyPicker$OnFrequencyChangedListener;)V

    .line 148
    div-int/lit16 v7, v4, 0x3e8

    .line 149
    .local v7, "MHz":I
    rem-int/lit16 v0, v4, 0x3e8

    div-int/lit8 v6, v0, 0x64

    .line 150
    .local v6, "KHz":I
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FM - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 132
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "FREQUENCY"

    iget-object v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mFrequencyPicker:Lcom/mediatek/fmradio/dialogs/FrequencyPicker;

    invoke-virtual {v2}, Lcom/mediatek/fmradio/dialogs/FrequencyPicker;->getFrequency()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    const-string v1, "FREQ_MIN"

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMinFrequency:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v1, "FREQ_MAX"

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mMaxFrequency:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v1, "FREQ_STEP"

    iget v2, p0, Lcom/mediatek/fmradio/dialogs/FrequencyPickerDialog;->mChannelSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    return-object v0
.end method
