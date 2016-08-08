.class public Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;
.super Lcom/zte/mifavor/preference/TwoStatePreference;
.source "CheckBoxPreferenceZTE.java"


# instance fields
.field mCheckBox:Lcom/zte/mifavor/widget/CheckBoxZTE;

.field mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    sget v0, Lcom/zte/extres/R$attr;->checkBoxPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
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

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mCheckBox:Lcom/zte/mifavor/widget/CheckBoxZTE;

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mColor:I

    .line 52
    sget-object v1, Lcom/zte/extres/R$styleable;->CheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->setDisableDependentsState(Z)V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method


# virtual methods
.method public SetColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mColor:I

    .line 86
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x1020001

    .line 72
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 73
    const-string v0, "CheckBoxPreferenceZTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindView view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/CheckBoxZTE;

    iput-object v0, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mCheckBox:Lcom/zte/mifavor/widget/CheckBoxZTE;

    .line 75
    iget v0, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mCheckBox:Lcom/zte/mifavor/widget/CheckBoxZTE;

    iget v1, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mColor:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/CheckBoxZTE;->SetColor(I)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mCheckBox:Lcom/zte/mifavor/widget/CheckBoxZTE;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mCheckBox:Lcom/zte/mifavor/widget/CheckBoxZTE;

    instance-of v0, v0, Landroid/widget/Checkable;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->mCheckBox:Lcom/zte/mifavor/widget/CheckBoxZTE;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/CheckBoxPreferenceZTE;->syncSummaryView(Landroid/view/View;)V

    .line 82
    return-void
.end method
