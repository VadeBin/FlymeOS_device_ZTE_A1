.class public abstract Lcom/zte/mifavor/preference/DialogPreference;
.super Lcom/zte/mifavor/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/zte/mifavor/widget/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    sget v0, Lcom/zte/extres/R$attr;->dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    sget-object v1, Lcom/zte/extres/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 77
    iget-object v1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 82
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 83
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 84
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 85
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 86
    const/4 v1, 0x5

    iget v2, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogLayoutResId:I

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 336
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 337
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 364
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "dialogMessageView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 367
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 368
    .local v1, "message":Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 370
    .local v2, "newVisibility":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 372
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    :cond_0
    const/4 v2, 0x0

    .line 378
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 379
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .end local v1    # "message":Ljava/lang/CharSequence;
    .end local v2    # "newVisibility":I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 385
    iput p2, p0, Lcom/zte/mifavor/preference/DialogPreference;->mWhichButtonClicked:I

    .line 386
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 348
    iget v2, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 353
    :goto_0
    return-object v1

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/DialogPreference;->mBuilder:Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 353
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 404
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 393
    iget v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/DialogPreference;->onDialogClosed(Z)V

    .line 394
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Lcom/zte/mifavor/widget/AlertDialog$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .prologue
    .line 270
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 442
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/mifavor/preference/DialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 444
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 453
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 448
    check-cast v0, Lcom/zte/mifavor/preference/DialogPreference$SavedState;

    .line 449
    .local v0, "myState":Lcom/zte/mifavor/preference/DialogPreference$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 450
    iget-boolean v1, v0, Lcom/zte/mifavor/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 451
    iget-object v1, v0, Lcom/zte/mifavor/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 429
    invoke-super {p0}, Lcom/zte/mifavor/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 430
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 437
    :goto_0
    return-object v0

    .line 434
    :cond_1
    new-instance v0, Lcom/zte/mifavor/preference/DialogPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 435
    .local v0, "myState":Lcom/zte/mifavor/preference/DialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/zte/mifavor/preference/DialogPreference$SavedState;->isDialogShowing:Z

    .line 436
    iget-object v2, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/zte/mifavor/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .param p1, "dialogIconRes"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 175
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "dialogIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 165
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .param p1, "dialogLayoutResId"    # I

    .prologue
    .line 249
    iput p1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogLayoutResId:I

    .line 250
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .param p1, "dialogMessageResId"    # I

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 148
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 140
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .param p1, "dialogTitleResId"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "dialogTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 110
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .param p1, "negativeButtonTextResId"    # I

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "negativeButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 221
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .param p1, "positiveButtonTextResId"    # I

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "positiveButtonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/zte/mifavor/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 193
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 289
    .local v1, "context":Landroid/content/Context;
    const/4 v3, -0x2

    iput v3, p0, Lcom/zte/mifavor/preference/DialogPreference;->mWhichButtonClicked:I

    .line 291
    new-instance v3, Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-direct {v3, v1}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/mifavor/preference/DialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/mifavor/preference/DialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/DialogPreference;->mBuilder:Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 297
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, "contentView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 300
    iget-object v3, p0, Lcom/zte/mifavor/preference/DialogPreference;->mBuilder:Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-virtual {v3, v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setView(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    .line 305
    :goto_0
    iget-object v3, p0, Lcom/zte/mifavor/preference/DialogPreference;->mBuilder:Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/preference/DialogPreference;->onPrepareDialogBuilder(Lcom/zte/mifavor/widget/AlertDialog$Builder;)V

    .line 307
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/zte/mifavor/preference/PreferenceManager;->registerOnActivityDestroyListener(Lcom/zte/mifavor/preference/PreferenceManager$OnActivityDestroyListener;)V

    .line 310
    iget-object v3, p0, Lcom/zte/mifavor/preference/DialogPreference;->mBuilder:Lcom/zte/mifavor/widget/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialog:Landroid/app/Dialog;

    .line 311
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/DialogPreference;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    invoke-direct {p0, v2}, Lcom/zte/mifavor/preference/DialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 317
    :cond_1
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 318
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 319
    return-void

    .line 302
    .end local v2    # "dialog":Landroid/app/Dialog;
    :cond_2
    iget-object v3, p0, Lcom/zte/mifavor/preference/DialogPreference;->mBuilder:Lcom/zte/mifavor/widget/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/mifavor/preference/DialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/AlertDialog$Builder;

    goto :goto_0
.end method
