.class public Lcom/zte/mifavor/preference/VolumePreference;
.super Lcom/zte/mifavor/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/VolumePreference$SavedState;,
        Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    sget v0, Lcom/zte/extres/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    sget-object v1, Lcom/zte/extres/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mStreamType:I

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->unregisterOnActivityStopListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;)V

    .line 134
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 136
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$id;->seekbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->revertVolume()V

    .line 143
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->stop()V

    .line 144
    iput-object v4, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .line 147
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->postStopSample()V

    .line 126
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 73
    sget v1, Lcom/zte/extres/R$id;->seekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 74
    .local v0, "seekBar":Landroid/widget/SeekBar;
    new-instance v1, Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/zte/mifavor/preference/VolumePreference;->mStreamType:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, p0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/zte/mifavor/preference/SeekBarVolumizer$Callback;)V

    iput-object v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .line 75
    iget-object v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 77
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->registerOnActivityStopListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityStopListener;)V

    .line 81
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 84
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 115
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->revertVolume()V

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/preference/VolumePreference;->cleanup()V

    .line 120
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    iget-object v3, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 90
    .local v0, "isdown":Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 107
    goto :goto_0

    .end local v0    # "isdown":Z
    :cond_2
    move v0, v2

    .line 89
    goto :goto_1

    .line 92
    .restart local v0    # "isdown":Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 93
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 97
    :sswitch_1
    if-eqz v0, :cond_0

    .line 98
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 102
    :sswitch_2
    if-eqz v0, :cond_0

    .line 103
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/mifavor/preference/VolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 184
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 179
    check-cast v0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;

    .line 180
    .local v0, "myState":Lcom/zte/mifavor/preference/VolumePreference$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 181
    iget-object v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->getVolumeStore()Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->onRestoreInstanceState(Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method public onSampleStarting(Lcom/zte/mifavor/preference/SeekBarVolumizer;)V
    .locals 1
    .param p1, "volumizer"    # Lcom/zte/mifavor/preference/SeekBarVolumizer;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->stopSample()V

    .line 154
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/zte/mifavor/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 159
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/VolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 164
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 165
    .local v0, "myState":Lcom/zte/mifavor/preference/VolumePreference$SavedState;
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/zte/mifavor/preference/VolumePreference;->mSeekBarVolumizer:Lcom/zte/mifavor/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->getVolumeStore()Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/preference/SeekBarVolumizer;->onSaveInstanceState(Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 168
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/zte/mifavor/preference/VolumePreference;->mStreamType:I

    .line 67
    return-void
.end method
