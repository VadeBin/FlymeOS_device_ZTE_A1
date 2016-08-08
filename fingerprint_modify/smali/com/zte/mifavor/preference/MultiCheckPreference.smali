.class public Lcom/zte/mifavor/preference/MultiCheckPreference;
.super Lcom/zte/mifavor/preference/DialogPreference;
.source "MultiCheckPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;
    }
.end annotation


# instance fields
.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/String;

.field private mOrigValues:[Z

.field private mSetValues:[Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    sget v0, Lcom/zte/extres/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/MultiCheckPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
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

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    sget-object v1, Lcom/zte/extres/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 53
    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/mifavor/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    sget-object v1, Lcom/zte/extres/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/preference/MultiCheckPreference;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/MultiCheckPreference;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method private setEntryValuesCS([Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    .line 136
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/MultiCheckPreference;->setValues([Z)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 232
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 234
    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 233
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    invoke-super {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public getValues()[Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/DialogPreference;->onDialogClosed(Z)V

    .line 265
    if-eqz p1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/MultiCheckPreference;->getValues()[Z

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/MultiCheckPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mOrigValues:[Z

    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    iget-object v2, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 275
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcom/zte/mifavor/widget/AlertDialog$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .prologue
    .line 244
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/DialogPreference;->onPrepareDialogBuilder(Lcom/zte/mifavor/widget/AlertDialog$Builder;)V

    .line 246
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mOrigValues:[Z

    .line 252
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    new-instance v2, Lcom/zte/mifavor/preference/MultiCheckPreference$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/preference/MultiCheckPreference$1;-><init>(Lcom/zte/mifavor/preference/MultiCheckPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 259
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 297
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 306
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 303
    check-cast v0, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;

    .line 304
    .local v0, "myState":Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/zte/mifavor/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 305
    iget-object v1, v0, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;->values:[Z

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/MultiCheckPreference;->setValues([Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 284
    invoke-super {p0}, Lcom/zte/mifavor/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 285
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/MultiCheckPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 290
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 291
    .local v0, "myState":Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/MultiCheckPreference;->getValues()[Z

    move-result-object v2

    iput-object v2, v0, Lcom/zte/mifavor/preference/MultiCheckPreference$SavedState;->values:[Z

    move-object v1, v0

    .line 292
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 280
    return-void
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/MultiCheckPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 93
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    .line 94
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mOrigValues:[Z

    .line 95
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/MultiCheckPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/MultiCheckPreference;->setEntryValuesCS([Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method

.method public setEntryValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "entryValues"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    iput-object p1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mEntryValues:[Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 124
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 125
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 214
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "state"    # Z

    .prologue
    .line 165
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    aput-boolean p2, v0, p1

    .line 166
    return-void
.end method

.method public setValues([Z)V
    .locals 4
    .param p1, "values"    # [Z

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 174
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mOrigValues:[Z

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v0, p1

    iget-object v2, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    array-length v0, p1

    :goto_0
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 180
    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/preference/MultiCheckPreference;->mSetValues:[Z

    array-length v0, v0

    goto :goto_0
.end method
