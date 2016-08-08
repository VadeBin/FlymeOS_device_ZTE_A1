.class public Lcom/zte/mifavor/widget/ListActivityZTE;
.super Landroid/app/ListActivity;
.source "ListActivityZTE.java"

# interfaces
.implements Landroid/widget/ActionMenuView$OnMenuItemClickListener;


# static fields
.field public static LEFT_BUTTON:I

.field public static RIGHT_BUTTON:I


# instance fields
.field private final ACTIONBAR_HEIGHT:I

.field private final ACTIONBAR_TAB_HEIGHT:I

.field private final INDICATOR_HEIGHT:I

.field private final SPLIT_ACTIONBAR_COLOR:I

.field private final SPLIT_ACTIONBAR_HEIGHT:I

.field private indicatorFlag:I

.field private mActionbarHeight:I

.field private mActionbarTabHeight:I

.field private mBackground:Landroid/widget/LinearLayout;

.field private mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mFullScreenSet:I

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field mScreenWidth:I

.field private mSpiltflag:I

.field private mSplitActionbarHeight:I

.field private mSplitBackground:Landroid/widget/LinearLayout;

.field mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/widget/ListActivityZTE;->LEFT_BUTTON:I

    .line 57
    const/4 v0, 0x1

    sput v0, Lcom/zte/mifavor/widget/ListActivityZTE;->RIGHT_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x34

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 41
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFullScreenSet:I

    .line 42
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->indicatorFlag:I

    .line 43
    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->INDICATOR_HEIGHT:I

    .line 46
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->ACTIONBAR_HEIGHT:I

    .line 47
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 48
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->ACTIONBAR_TAB_HEIGHT:I

    .line 49
    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarHeight:I

    .line 50
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mActionbarTabHeight:I

    .line 51
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSplitActionbarHeight:I

    .line 52
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSpiltflag:I

    .line 53
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->SPLIT_ACTIONBAR_COLOR:I

    .line 54
    iput-object v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 55
    iput v1, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mScreenWidth:I

    return-void
.end method


# virtual methods
.method public SetBottomBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    goto :goto_0
.end method

.method public SetBottomButtonEnable(IZ)V
    .locals 3
    .param p1, "poistion"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 156
    sget v0, Lcom/zte/mifavor/widget/ListActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 157
    if-eqz p2, :cond_0

    .line 159
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 165
    :cond_1
    if-eqz p2, :cond_2

    .line 167
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 175
    sget v0, Lcom/zte/mifavor/widget/ListActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public SetBottomButtonVisible(IZ)V
    .locals 3
    .param p1, "poistion"    # I
    .param p2, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 135
    sget v0, Lcom/zte/mifavor/widget/ListActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 136
    if-eqz p2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 145
    :cond_1
    if-eqz p2, :cond_2

    .line 147
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public addBottomBarOptionMenu(I)V
    .locals 10
    .param p1, "resId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 88
    iget-object v5, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, p1}, Lcom/zte/mifavor/widget/ToolBarZTE;->inflateMenu(I)V

    .line 89
    iget-object v5, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 90
    iget-object v5, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, p0}, Lcom/zte/mifavor/widget/ToolBarZTE;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 91
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ListActivityZTE;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 92
    .local v4, "view":Landroid/view/ViewGroup;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 99
    .local v1, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v2, "mToobarParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 104
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 106
    .local v3, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 108
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v5, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 111
    .restart local v3    # "vgroup":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v5, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iput v9, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mSpiltflag:I

    .line 115
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ListActivityZTE;->setContentView(Landroid/view/View;)V

    .line 116
    return-void
.end method

.method public fillActionbarTab(Z)V
    .locals 0
    .param p1, "fillTab"    # Z

    .prologue
    .line 123
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 62
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mScreenWidth:I

    .line 65
    new-instance v2, Lcom/zte/mifavor/widget/ToolBarZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mScreenWidth:I

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 66
    iget-object v2, p0, Lcom/zte/mifavor/widget/ListActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const v3, -0x1d1d1e

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;->setBackgroundColor(I)V

    .line 70
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ListActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public setIndicatorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ListActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method public setIndicatorColor(ZZI)V
    .locals 0
    .param p1, "fillActionBar"    # Z
    .param p2, "fillSplitAactionBar"    # Z
    .param p3, "color"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/ListActivityZTE;->setIndicatorColor(I)V

    .line 86
    return-void
.end method
