.class public Lcom/zte/mifavor/preference/SeekBarPreference;
.super Lcom/zte/mifavor/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    sget v0, Lcom/zte/extres/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    sget-object v2, Landroid/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 47
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    iget v3, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/SeekBarPreference;->setMax(I)V

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    sget-object v2, Lcom/zte/extres/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    const/4 v2, 0x0

    sget v3, Lcom/zte/extres/R$layout;->preference_widget_seekbar:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 55
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->setLayoutResource(I)V

    .line 58
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 126
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 127
    iget p1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    .line 129
    :cond_0
    if-gez p1, :cond_1

    .line 130
    const/4 p1, 0x0

    .line 132
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 133
    iput p1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    .line 134
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/SeekBarPreference;->persistInt(I)Z

    .line 135
    if-eqz p2, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->notifyChanged()V

    .line 139
    :cond_2
    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 75
    sget v1, Lcom/zte/extres/R$id;->seekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 76
    .local v0, "seekBar":Landroid/widget/SeekBar;
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 77
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 78
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 79
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 80
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 101
    const/16 v1, 0x51

    if-eq p2, v1, :cond_0

    const/16 v1, 0x46

    if-ne p2, v1, :cond_1

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(I)V

    .line 111
    :goto_0
    return v0

    .line 106
    :cond_1
    const/16 v1, 0x45

    if-ne p2, v1, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(I)V

    goto :goto_0

    .line 111
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 163
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mTrackingTouch:Z

    if-nez v0, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 166
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 211
    check-cast v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;

    .line 212
    .local v0, "myState":Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 213
    iget v1, v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    .line 214
    iget v1, v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    .line 215
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->notifyChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 189
    invoke-super {p0}, Lcom/zte/mifavor/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 190
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 196
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 197
    .local v0, "myState":Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->progress:I

    .line 198
    iget v2, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    iput v2, v0, Lcom/zte/mifavor/preference/SeekBarPreference$SavedState;->max:I

    move-object v1, v0

    .line 199
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(I)V

    .line 91
    return-void

    .line 89
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 171
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mTrackingTouch:Z

    .line 176
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 179
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 115
    iget v0, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 116
    iput p1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mMax:I

    .line 117
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SeekBarPreference;->notifyChanged()V

    .line 119
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(IZ)V

    .line 123
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 151
    .local v0, "progress":I
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/mifavor/preference/SeekBarPreference;->setProgress(IZ)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget v1, p0, Lcom/zte/mifavor/preference/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
