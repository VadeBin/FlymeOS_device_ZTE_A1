.class public Lcom/zte/mifavor/widget/FragmentActivityZTE;
.super Landroid/support/v4/app/FragmentActivity;
.source "FragmentActivityZTE.java"

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
    .line 117
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->LEFT_BUTTON:I

    .line 118
    const/4 v0, 0x1

    sput v0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->RIGHT_BUTTON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x34

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 102
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFullScreenSet:I

    .line 103
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->indicatorFlag:I

    .line 104
    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mFrameParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    const/16 v0, 0x19

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->INDICATOR_HEIGHT:I

    .line 107
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->ACTIONBAR_HEIGHT:I

    .line 108
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->SPLIT_ACTIONBAR_HEIGHT:I

    .line 109
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->ACTIONBAR_TAB_HEIGHT:I

    .line 110
    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarHeight:I

    .line 111
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mActionbarTabHeight:I

    .line 112
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSplitActionbarHeight:I

    .line 113
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSpiltflag:I

    .line 114
    const v0, -0x1d1d1e

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->SPLIT_ACTIONBAR_COLOR:I

    .line 115
    iput-object v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 116
    iput v1, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mScreenWidth:I

    return-void
.end method


# virtual methods
.method public SetBottomBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

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

    .line 259
    sget v0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 260
    if-eqz p2, :cond_0

    .line 262
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 268
    :cond_1
    if-eqz p2, :cond_2

    .line 270
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 1
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 278
    sget v0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

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

    .line 238
    sget v0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->LEFT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 239
    if-eqz p2, :cond_0

    .line 241
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 248
    :cond_1
    if-eqz p2, :cond_2

    .line 250
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    iget-object v0, v0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public addBottomBarOptionMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/ToolBarZTE;->inflateMenu(I)V

    .line 223
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, p0}, Lcom/zte/mifavor/widget/ToolBarZTE;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 225
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mSpiltflag:I

    .line 226
    return-void
.end method

.method public fillActionbarTab(Z)V
    .locals 0
    .param p1, "fillTab"    # Z

    .prologue
    .line 219
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 123
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 124
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 125
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mScreenWidth:I

    .line 126
    new-instance v2, Lcom/zte/mifavor/widget/ToolBarZTE;

    iget v3, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mScreenWidth:I

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    .line 127
    iget-object v2, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const v3, -0x1d1d1e

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/ToolBarZTE;->setBackgroundColor(I)V

    .line 129
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 131
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 132
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->setContentView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 139
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 141
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 146
    .local v1, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 149
    .local v2, "mToobarParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 153
    .local v3, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 157
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 158
    .restart local v3    # "vgroup":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 162
    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 170
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "layout":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 176
    .local v1, "mLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v2, "mToobarParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x50

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 183
    .local v3, "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 185
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 187
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/ToolBarZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 188
    .restart local v3    # "vgroup":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 190
    .end local v3    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v4, p0, Lcom/zte/mifavor/widget/FragmentActivityZTE;->mToobar:Lcom/zte/mifavor/widget/ToolBarZTE;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->setVisibility(I)V

    .line 192
    invoke-super {p0, v0, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->getWindow()Landroid/view/Window;

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
    .line 210
    invoke-virtual {p0, p3}, Lcom/zte/mifavor/widget/FragmentActivityZTE;->setIndicatorColor(I)V

    .line 211
    return-void
.end method
