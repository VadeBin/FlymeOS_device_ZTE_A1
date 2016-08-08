.class public Lcom/zte/mifavor/preference/ListPreference;
.super Lcom/zte/mifavor/preference/DialogPreference;
.source "ListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/ListPreference$SavedState;
    }
.end annotation


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    sget v0, Lcom/zte/extres/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    sget-object v1, Lcom/zte/extres/R$styleable;->ListPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 54
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 60
    sget-object v1, Lcom/zte/extres/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/zte/mifavor/preference/ListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/preference/ListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/zte/mifavor/preference/ListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 231
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 233
    iget-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 232
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 238
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/zte/mifavor/preference/ListPreference;->getValueIndex()I

    move-result v0

    .line 221
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    .local v0, "entry":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    invoke-super {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mSummary:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/DialogPreference;->onDialogClosed(Z)V

    .line 281
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/zte/mifavor/preference/ListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 287
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 291
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Lcom/zte/mifavor/widget/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    .line 247
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/DialogPreference;->onPrepareDialogBuilder(Lcom/zte/mifavor/widget/AlertDialog$Builder;)V

    .line 249
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/zte/mifavor/preference/ListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mClickedDialogEntryIndex:I

    .line 255
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/zte/mifavor/preference/ListPreference$1;

    invoke-direct {v2, p0}, Lcom/zte/mifavor/preference/ListPreference$1;-><init>(Lcom/zte/mifavor/preference/ListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 274
    invoke-virtual {p1, v3, v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 275
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 314
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/mifavor/preference/ListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 323
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 320
    check-cast v0, Lcom/zte/mifavor/preference/ListPreference$SavedState;

    .line 321
    .local v0, "myState":Lcom/zte/mifavor/preference/ListPreference$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/ListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/zte/mifavor/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 322
    iget-object v1, v0, Lcom/zte/mifavor/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 301
    invoke-super {p0}, Lcom/zte/mifavor/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 302
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/ListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 307
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/zte/mifavor/preference/ListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/ListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 308
    .local v0, "myState":Lcom/zte/mifavor/preference/ListPreference$SavedState;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/zte/mifavor/preference/ListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 309
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/ListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 297
    return-void

    .line 296
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setEntries(I)V
    .locals 1
    .param p1, "entriesResId"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method public setEntryValues(I)V
    .locals 1
    .param p1, "entryValuesResId"    # I

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "entryValues"    # [Ljava/lang/CharSequence;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 118
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mSummary:Ljava/lang/String;

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 145
    iget-object v2, p0, Lcom/zte/mifavor/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 146
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/zte/mifavor/preference/ListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/preference/ListPreference;->mValue:Ljava/lang/String;

    .line 148
    iput-boolean v1, p0, Lcom/zte/mifavor/preference/ListPreference;->mValueSet:Z

    .line 149
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/ListPreference;->persistString(Ljava/lang/String;)Z

    .line 150
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/ListPreference;->notifyChanged()V

    .line 154
    :cond_1
    return-void

    .line 145
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setValueIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/zte/mifavor/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 202
    :cond_0
    return-void
.end method
