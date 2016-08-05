.class public Lcom/zte/mifavor/preference/SwitchPreference;
.super Lcom/zte/mifavor/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/SwitchPreference$1;,
        Lcom/zte/mifavor/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field private mCutoffView:Landroid/widget/ImageView;

.field private final mListener:Lcom/zte/mifavor/preference/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    sget v0, Lcom/zte/extres/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance v1, Lcom/zte/mifavor/preference/SwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/mifavor/preference/SwitchPreference$Listener;-><init>(Lcom/zte/mifavor/preference/SwitchPreference;Lcom/zte/mifavor/preference/SwitchPreference$1;)V

    iput-object v1, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mListener:Lcom/zte/mifavor/preference/SwitchPreference$Listener;

    .line 78
    sget-object v1, Lcom/zte/extres/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 80
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 127
    sget v2, Lcom/zte/extres/R$id;->switchWidget:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 129
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 130
    check-cast v1, Landroid/widget/Switch;

    .line 131
    .local v1, "switchView":Landroid/widget/Switch;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_0
    move-object v2, v0

    .line 134
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 136
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 137
    check-cast v1, Landroid/widget/Switch;

    .line 138
    .restart local v1    # "switchView":Landroid/widget/Switch;
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mListener:Lcom/zte/mifavor/preference/SwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 144
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 146
    sget v2, Lcom/zte/extres/R$id;->ib_add:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    .line 147
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 149
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->notifyChanged()V

    .line 177
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 187
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 165
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->notifyChanged()V

    .line 166
    return-void
.end method
