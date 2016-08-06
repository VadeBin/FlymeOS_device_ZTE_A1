.class public Lcom/zte/mifavor/widget/ToolBarZTE;
.super Landroid/widget/LinearLayout;
.source "ToolBarZTE.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/ToolBarZTE$1;,
        Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;
    }
.end annotation


# instance fields
.field public btnLeft:Landroid/widget/Button;

.field public btnRight:Landroid/widget/Button;

.field public divider:Landroid/widget/ImageView;

.field mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPresenter:Landroid/widget/ActionMenuPresenter;

.field mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screenWidth"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    .line 50
    iput p2, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mScreenWidth:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/ToolBarZTE;)Landroid/widget/ActionMenuView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ToolBarZTE;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/ToolBarZTE;)Lcom/android/internal/view/menu/MenuBuilder$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/ToolBarZTE;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    return-object v0
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ToolBarZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public AddInteralView()V
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 95
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/zte/extres/R$drawable;->ab_bottom_transparent_light_zte:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    .line 97
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 98
    .local v3, "menuLeft":Lcom/android/internal/view/menu/MenuItemImpl;
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 99
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/zte/extres/R$drawable;->spiltbtn_default_material:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v1, "lpleft":Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 104
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnLeft:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->addView(Landroid/view/View;)V

    .line 109
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    .line 110
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    sget v6, Lcom/zte/extres/R$drawable;->divider_vertical_holo_dark:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    invoke-static {v5, v11}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 114
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    invoke-static {v5, v12}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 115
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    invoke-static {v5, v12}, Lcom/zte/mifavor/widget/Utils;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 116
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->divider:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->addView(Landroid/view/View;)V

    .line 119
    new-instance v5, Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    .line 120
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 121
    .local v4, "menuRight":Lcom/android/internal/view/menu/MenuItemImpl;
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setId(I)V

    .line 122
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/zte/extres/R$drawable;->spiltbtn_default_material:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v2, "lpright":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 129
    iget-object v5, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->btnRight:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ToolBarZTE;->addView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 79
    instance-of v0, p1, Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, -0x1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .prologue
    .line 143
    iget-object v1, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ToolBarZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 146
    iget-object v1, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v2, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;-><init>(Lcom/zte/mifavor/widget/ToolBarZTE;Lcom/zte/mifavor/widget/ToolBarZTE$1;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 149
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v1
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ToolBarZTE;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ToolBarZTE;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 89
    iget-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mActionItems:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/mifavor/widget/ToolBarZTE$MenuBuilderCallback;-><init>(Lcom/zte/mifavor/widget/ToolBarZTE;Lcom/zte/mifavor/widget/ToolBarZTE$1;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 91
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ToolBarZTE;->AddInteralView()V

    .line 92
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    iget-object v1, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    .line 279
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 157
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 273
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/zte/mifavor/widget/ToolBarZTE;->mOnMenuItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 141
    return-void
.end method
