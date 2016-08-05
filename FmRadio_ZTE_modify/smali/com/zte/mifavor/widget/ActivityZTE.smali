.class public Lcom/zte/mifavor/widget/ActivityZTE;
.super Landroid/app/Activity;
.source "ActivityZTE.java"

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

.field public mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    .line 53
    const/4 v0, 0x1

    sput v0, Lcom/zte/mifavor/widget/ActivityZTE;->RIGHT_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x34

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFullScreenSet:I

    .line 38
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->indicatorFlag:I

    .line 39
    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->INDICATOR_HEIGHT:I

    .line 42
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->ACTIONBAR_HEIGHT:I

    .line 43
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 44
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->ACTIONBAR_TAB_HEIGHT:I

    .line 45
    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarHeight:I

    .line 46
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mActionbarTabHeight:I

    .line 47
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSplitActionbarHeight:I

    .line 48
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSpiltflag:I

    .line 49
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->SPLIT_ACTIONBAR_COLOR:I

    .line 50
    iput-object v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 51
    iput v1, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mScreenWidth:I

    return-void
.end method


# virtual methods
.method public SetBottomBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 206
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

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

    .line 229
    sget v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 230
    if-eqz p2, :cond_0

    .line 232
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 246
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 238
    :cond_1
    if-eqz p2, :cond_2

    .line 240
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 248
    sget v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

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

    .line 208
    sget v0, Lcom/zte/mifavor/widget/ActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 209
    if-eqz p2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_1
    if-eqz p2, :cond_2

    .line 220
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

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

    .line 145
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, p1}, Lcom/zte/mifavor/widget/ToolBarZTE;->inflateMenu(I)V

    .line 146
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 147
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5, p0}, Lcom/zte/mifavor/widget/ToolBarZTE;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 148
    const v5, 0x1020002

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ActivityZTE;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 149
    .local v4, "view":Landroid/view/ViewGroup;
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 156
    .local v1, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v2, "mToobarParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 161
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 162
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 163
    .local v3, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 165
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 167
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 168
    .restart local v3    # "vgroup":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v5, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iput v9, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mSpiltflag:I

    .line 172
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ActivityZTE;->setContentView(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public fillActionbarTab(Z)V
    .locals 0
    .param p1, "fillTab"    # Z

    .prologue
    .line 190
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 58
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 59
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 60
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mScreenWidth:I

    .line 61
    new-instance v2, Lcom/zte/mifavor/widget/ToolBarZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mScreenWidth:I

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 62
    iget-object v2, p0, Lcom/zte/mifavor/widget/ActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const v3, -0x1d1d1e

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;->setBackgroundColor(I)V

    .line 64
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public setIndicatorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->getWindow()Landroid/view/Window;

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
    .line 181
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/ActivityZTE;->setIndicatorColor(I)V

    .line 182
    return-void
.end method
