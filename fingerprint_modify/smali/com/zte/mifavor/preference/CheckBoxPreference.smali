.class public Lcom/zte/mifavor/preference/CheckBoxPreference;
.super Lcom/zte/mifavor/preference/TwoStatePreference;
.source "CheckBoxPreference.java"


# instance fields
.field mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    sget v0, Lcom/zte/extres/R$attr;->checkBoxPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
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

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/mifavor/preference/CheckBoxPreference;->mColor:I

    .line 49
    sget-object v1, Lcom/zte/extres/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 52
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 53
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/CheckBoxPreference;->setDisableDependentsState(Z)V

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method


# virtual methods
.method public SetColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/zte/mifavor/preference/CheckBoxPreference;->mColor:I

    .line 86
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 70
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, "checkboxView":Landroid/view/View;
    iget v1, p0, Lcom/zte/mifavor/preference/CheckBoxPreference;->mColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zte/mifavor/widget/SetColorable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 74
    check-cast v1, Lcom/zte/mifavor/widget/SetColorable;

    iget v2, p0, Lcom/zte/mifavor/preference/CheckBoxPreference;->mColor:I

    invoke-interface {v1, v2}, Lcom/zte/mifavor/widget/SetColorable;->SetColor(I)V

    .line 77
    :cond_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 78
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "checkboxView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/zte/mifavor/preference/CheckBoxPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/CheckBoxPreference;->syncSummaryView(Landroid/view/View;)V

    .line 82
    return-void
.end method
