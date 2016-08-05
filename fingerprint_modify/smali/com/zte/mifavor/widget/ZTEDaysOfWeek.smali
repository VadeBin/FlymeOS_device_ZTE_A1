.class public Lcom/zte/mifavor/widget/ZTEDaysOfWeek;
.super Landroid/widget/LinearLayout;
.source "ZTEDaysOfWeek.java"


# static fields
.field private static mCheckedColor:I


# instance fields
.field private isEnabled:Z

.field private mDays:I

.field private final mUncheckedColor:I

.field private mView:Landroid/view/View;

.field private mWeekButton:[Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/high16 v0, -0x10000

    sput v0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mCheckedColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    .line 20
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isEnabled:Z

    .line 22
    const v2, -0x181819

    iput v2, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mUncheckedColor:I

    .line 25
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 26
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/zte/extres/R$layout;->zte_days_of_week:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "view":Landroid/view/View;
    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    .line 28
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->addView(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method private InitToggleButton()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->repeat_mon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v4

    .line 112
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->repeat_tue:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v5

    .line 113
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->repeat_wed:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v6

    .line 114
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->repeat_thu:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v7

    .line 115
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->repeat_fri:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v8

    .line 116
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v3, Lcom/zte/extres/R$id;->repeat_sat:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v2

    .line 117
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mView:Landroid/view/View;

    sget v3, Lcom/zte/extres/R$id;->repeat_sun:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    aput-object v0, v1, v2

    .line 119
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v4

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$1;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v5

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$2;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$2;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v6

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$3;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$3;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v7

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$4;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$4;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, v8

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$5;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$5;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 146
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$6;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$6;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 151
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    new-instance v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$7;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek$7;-><init>(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 157
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setChecked()V

    .line 158
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setButtonBackGround()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ZTEDaysOfWeek;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ZTEDaysOfWeek;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->set(IZ)V

    return-void
.end method

.method private isSet(I)Z
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x1

    .line 56
    iget v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private set(IZ)V
    .locals 2
    .param p1, "day"    # I
    .param p2, "set"    # Z

    .prologue
    const/4 v1, 0x1

    .line 60
    if-eqz p2, :cond_0

    .line 61
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setButtonBackGround(Landroid/widget/ToggleButton;)V

    .line 66
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    goto :goto_0
.end method

.method private setButtonBackGround()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setButtonBackGround(Landroid/widget/ToggleButton;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method private setButtonBackGround(Landroid/widget/ToggleButton;)V
    .locals 3
    .param p1, "toggleButton"    # Landroid/widget/ToggleButton;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget v1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mCheckedColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    const v1, -0x181819

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private setChecked()V
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 97
    const/4 v0, 0x0

    .local v0, "day":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 98
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 97
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1

    .line 105
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    .line 106
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->setButtonBackGround(Landroid/widget/ToggleButton;)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 108
    :cond_2
    return-void
.end method


# virtual methods
.method public getBooleanArray()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 74
    new-array v1, v3, [Z

    .line 75
    .local v1, "ret":[Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 76
    invoke-direct {p0, v0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-object v1
.end method

.method public getDays()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isEnabled:Z

    return v0
.end method

.method public isEveryDaySet()Z
    .locals 2

    .prologue
    .line 93
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatSet()Z
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackGroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 32
    sput p1, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mCheckedColor:I

    .line 33
    return-void
.end method

.method public setDays(I)V
    .locals 0
    .param p1, "days"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mDays:I

    .line 48
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->InitToggleButton()V

    .line 49
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->isEnabled:Z

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEDaysOfWeek;->mWeekButton:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method
