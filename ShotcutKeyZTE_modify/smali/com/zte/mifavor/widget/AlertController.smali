.class public Lcom/zte/mifavor/widget/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;,
        Lcom/zte/mifavor/widget/AlertController$AlertParams;,
        Lcom/zte/mifavor/widget/AlertController$RecycleListView;,
        Lcom/zte/mifavor/widget/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v4, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 93
    iput v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    .line 105
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I

    .line 114
    iput v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelLayoutHint:I

    .line 118
    new-instance v1, Lcom/zte/mifavor/widget/AlertController$1;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/widget/AlertController$1;-><init>(Lcom/zte/mifavor/widget/AlertController;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 176
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 178
    iput-object p3, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    .line 179
    new-instance v1, Lcom/zte/mifavor/widget/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/zte/mifavor/widget/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mHandler:Landroid/os/Handler;

    .line 181
    const/4 v1, 0x0

    sget-object v2, Lcom/zte/extres/R$styleable;->AlertDialog:[I

    sget v3, Lcom/zte/extres/R$attr;->alertDialogStyle:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 185
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_layout:I

    sget v2, Lcom/zte/extres/R$layout;->alert_dialog_zte_light:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mAlertDialogLayout:I

    .line 187
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelSideLayout:I

    .line 190
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_listLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mListLayout:I

    .line 193
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_multichoice_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mMultiChoiceItemLayout:I

    .line 196
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_singlechoice_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mSingleChoiceItemLayout:I

    .line 199
    sget v1, Lcom/zte/extres/R$styleable;->AlertDialog_listItemLayout:I

    sget v2, Lcom/zte/extres/R$layout;->select_dialog_item_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/zte/mifavor/widget/AlertController;->mListItemLayout:I

    .line 203
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setBottomOnZteTheme()V

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/zte/mifavor/widget/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/mifavor/widget/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/mifavor/widget/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/mifavor/widget/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/mifavor/widget/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    .line 60
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    :goto_0
    return v2

    .line 220
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 221
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 224
    check-cast v1, Landroid/view/ViewGroup;

    .line 225
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 226
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 227
    add-int/lit8 v0, v0, -0x1

    .line 228
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 229
    invoke-static {p0}, Lcom/zte/mifavor/widget/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 234
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 667
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 668
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 669
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 670
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    return-void
.end method

.method private selectContentView()I
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    .line 248
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mAlertDialogLayout:I

    .line 254
    :goto_0
    return v0

    .line 250
    :cond_0
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 251
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelSideLayout:I

    goto :goto_0

    .line 254
    :cond_1
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController;->mAlertDialogLayout:I

    goto :goto_0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 24
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "topPanel"    # Landroid/view/View;
    .param p3, "contentPanel"    # Landroid/view/View;
    .param p4, "customPanel"    # Landroid/view/View;
    .param p5, "buttonPanel"    # Landroid/view/View;
    .param p6, "hasTitle"    # Z
    .param p7, "hasCustomView"    # Z
    .param p8, "hasButtons"    # Z

    .prologue
    .line 683
    const/4 v10, 0x0

    .line 684
    .local v10, "fullDark":I
    const/16 v19, 0x0

    .line 685
    .local v19, "topDark":I
    const/4 v7, 0x0

    .line 686
    .local v7, "centerDark":I
    const/4 v4, 0x0

    .line 687
    .local v4, "bottomDark":I
    const/4 v9, 0x0

    .line 688
    .local v9, "fullBright":I
    const/16 v18, 0x0

    .line 689
    .local v18, "topBright":I
    const/4 v6, 0x0

    .line 690
    .local v6, "centerBright":I
    const/4 v3, 0x0

    .line 691
    .local v3, "bottomBright":I
    const/4 v5, 0x0

    .line 695
    .local v5, "bottomMedium":I
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_needsDefaultBackgrounds:I

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 697
    .local v15, "needsDefaultBackgrounds":Z
    if-eqz v15, :cond_0

    .line 698
    sget v10, Lcom/zte/extres/R$drawable;->dialog_full_zte_light:I

    .line 699
    sget v19, Lcom/zte/extres/R$drawable;->dialog_top_zte_light:I

    .line 700
    sget v7, Lcom/zte/extres/R$drawable;->dialog_middle_zte_light:I

    .line 701
    sget v4, Lcom/zte/extres/R$drawable;->dialog_bottom_zte_light:I

    .line 702
    sget v9, Lcom/zte/extres/R$drawable;->dialog_full_zte_light:I

    .line 703
    sget v18, Lcom/zte/extres/R$drawable;->dialog_top_zte_light:I

    .line 704
    sget v6, Lcom/zte/extres/R$drawable;->dialog_middle_zte_light:I

    .line 705
    sget v3, Lcom/zte/extres/R$drawable;->dialog_bottom_zte_light:I

    .line 706
    sget v5, Lcom/zte/extres/R$drawable;->dialog_middle_zte_light:I

    .line 709
    :cond_0
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_topBright:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 710
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_topDark:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 711
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_centerBright:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 712
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_centerDark:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 722
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v21, v0

    .line 723
    .local v21, "views":[Landroid/view/View;
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v13, v0, [Z

    .line 724
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 725
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 727
    .local v11, "lastLight":Z
    const/16 v16, 0x0

    .line 728
    .local v16, "pos":I
    if-eqz p6, :cond_1

    .line 729
    aput-object p2, v21, v16

    .line 730
    const/16 v22, 0x0

    aput-boolean v22, v13, v16

    .line 731
    add-int/lit8 v16, v16, 0x1

    .line 739
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 p3, 0x0

    .end local p3    # "contentPanel":Landroid/view/View;
    :cond_2
    aput-object p3, v21, v16

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x1

    :goto_0
    aput-boolean v22, v13, v16

    .line 741
    add-int/lit8 v16, v16, 0x1

    .line 743
    if-eqz p7, :cond_3

    .line 744
    aput-object p4, v21, v16

    .line 745
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/zte/mifavor/widget/AlertController;->mForceInverseBackground:Z

    move/from16 v22, v0

    aput-boolean v22, v13, v16

    .line 746
    add-int/lit8 v16, v16, 0x1

    .line 749
    :cond_3
    if-eqz p8, :cond_4

    .line 750
    aput-object p5, v21, v16

    .line 751
    const/16 v22, 0x1

    aput-boolean v22, v13, v16

    .line 754
    :cond_4
    const/16 v17, 0x0

    .line 755
    .local v17, "setView":Z
    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 756
    aget-object v20, v21, v16

    .line 757
    .local v20, "v":Landroid/view/View;
    if-nez v20, :cond_6

    .line 755
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 740
    .end local v17    # "setView":Z
    .end local v20    # "v":Landroid/view/View;
    :cond_5
    const/16 v22, 0x0

    goto :goto_0

    .line 761
    .restart local v17    # "setView":Z
    .restart local v20    # "v":Landroid/view/View;
    :cond_6
    if-eqz v12, :cond_7

    .line 762
    if-nez v17, :cond_9

    .line 763
    if-eqz v11, :cond_8

    move/from16 v22, v18

    :goto_3
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 767
    :goto_4
    const/16 v17, 0x1

    .line 770
    :cond_7
    move-object/from16 v12, v20

    .line 771
    aget-boolean v11, v13, v16

    goto :goto_2

    :cond_8
    move/from16 v22, v19

    .line 763
    goto :goto_3

    .line 765
    :cond_9
    if-eqz v11, :cond_a

    move/from16 v22, v6

    :goto_5
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_a
    move/from16 v22, v7

    goto :goto_5

    .line 774
    .end local v20    # "v":Landroid/view/View;
    :cond_b
    if-eqz v12, :cond_c

    .line 775
    if-eqz v17, :cond_10

    .line 776
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_bottomBright:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 777
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_bottomMedium:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 778
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_bottomDark:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 782
    if-eqz v11, :cond_f

    if-eqz p8, :cond_e

    move/from16 v22, v5

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 792
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    .line 793
    .local v14, "listView":Landroid/widget/ListView;
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    if-eqz v22, :cond_d

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 795
    move-object/from16 v0, p0

    iget v8, v0, Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I

    .line 796
    .local v8, "checkedItem":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v8, v0, :cond_d

    .line 797
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v14, v8, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 798
    invoke-virtual {v14, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 801
    .end local v8    # "checkedItem":I
    :cond_d
    return-void

    .end local v14    # "listView":Landroid/widget/ListView;
    :cond_e
    move/from16 v22, v3

    .line 782
    goto :goto_6

    :cond_f
    move/from16 v22, v4

    goto :goto_6

    .line 785
    :cond_10
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_fullBright:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 786
    sget v22, Lcom/zte/extres/R$styleable;->AlertDialog_fullDark:I

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 788
    if-eqz v11, :cond_11

    move/from16 v22, v9

    :goto_8
    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_11
    move/from16 v22, v10

    goto :goto_8
.end method

.method private setBottomOnZteTheme()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 213
    return-void
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 610
    const/4 v2, 0x1

    .line 611
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 612
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 613
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 614
    .local v3, "whichButtons":I
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->button1:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 615
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 618
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 625
    :goto_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->button2:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 626
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 628
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 629
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    :goto_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v6, Lcom/zte/extres/R$id;->button3:I

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 638
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 641
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 649
    :goto_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/zte/mifavor/widget/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 654
    if-ne v3, v2, :cond_4

    .line 655
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/zte/mifavor/widget/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 663
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 620
    :cond_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 622
    or-int/2addr v3, v2

    goto :goto_0

    .line 631
    :cond_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 634
    or-int/2addr v3, v0

    goto :goto_1

    .line 643
    :cond_3
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 646
    or-int/2addr v3, v1

    goto :goto_2

    .line 656
    :cond_4
    if-ne v3, v0, :cond_5

    .line 657
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/zte/mifavor/widget/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 658
    :cond_5
    if-ne v3, v1, :cond_0

    .line 659
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/zte/mifavor/widget/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 663
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 583
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 584
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 587
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 588
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 607
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 598
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 599
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/zte/extres/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 600
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 604
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupDecor()V
    .locals 4

    .prologue
    .line 439
    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 440
    .local v0, "decor":Landroid/view/View;
    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/zte/extres/R$id;->parentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 441
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 442
    new-instance v2, Lcom/zte/mifavor/widget/AlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/zte/mifavor/widget/AlertController$2;-><init>(Lcom/zte/mifavor/widget/AlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 454
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 455
    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    .line 457
    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v0, 0x0

    const/16 v9, 0x8

    .line 533
    const/4 v1, 0x1

    .line 535
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 537
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 540
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 543
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 544
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 579
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :goto_0
    return v1

    .line 546
    :cond_0
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->icon:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 548
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 549
    .local v0, "hasTextTitle":Z
    :cond_1
    if-eqz v0, :cond_4

    .line 551
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->alertTitle:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 552
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    if-eqz v4, :cond_2

    .line 558
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 559
    :cond_2
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 560
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 564
    :cond_3
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 568
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 572
    :cond_4
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Lcom/zte/extres/R$id;->title_template:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 573
    .restart local v3    # "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 22

    .prologue
    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->contentPanel:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 461
    .local v7, "contentPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/zte/mifavor/widget/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/zte/mifavor/widget/AlertController;->setupButtons()Z

    move-result v12

    .line 464
    .local v12, "hasButtons":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->topPanel:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 465
    .local v6, "topPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    const/16 v18, 0x0

    sget-object v19, Lcom/zte/extres/R$styleable;->AlertDialog:[I

    const v20, 0x101005d

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 467
    .local v5, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/zte/mifavor/widget/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v10

    .line 469
    .local v10, "hasTitle":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->buttonPanel:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 470
    .local v9, "buttonPanel":Landroid/view/View;
    if-nez v12, :cond_1

    .line 471
    const/16 v4, 0x8

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->textSpacerNoButtons:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 473
    .local v17, "spacer":Landroid/view/View;
    if-eqz v17, :cond_0

    .line 474
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 479
    .end local v17    # "spacer":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->customPanel:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 481
    .local v8, "customPanel":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 482
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    .line 490
    .local v14, "customView":Landroid/view/View;
    :goto_0
    if-eqz v14, :cond_a

    const/4 v11, 0x1

    .line 491
    .local v11, "hasCustomView":Z
    :goto_1
    if-eqz v11, :cond_2

    invoke-static {v14}, Lcom/zte/mifavor/widget/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 492
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v18, 0x20000

    const/high16 v19, 0x20000

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/view/Window;->setFlags(II)V

    .line 496
    :cond_3
    if-eqz v11, :cond_b

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->custom:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 498
    .local v13, "custom":Landroid/widget/FrameLayout;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_4

    .line 501
    move-object/from16 v0, p0

    iget v4, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingTop:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingRight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingBottom:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v13, v4, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 505
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_5

    .line 506
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 514
    .end local v13    # "custom":Landroid/widget/FrameLayout;
    :cond_5
    :goto_2
    if-eqz v10, :cond_7

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    if-nez v14, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_c

    .line 517
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->titleDivider:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 522
    .local v15, "divider":Landroid/view/View;
    :goto_3
    if-eqz v15, :cond_7

    .line 523
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .end local v15    # "divider":Landroid/view/View;
    :cond_7
    move-object/from16 v4, p0

    .line 527
    invoke-direct/range {v4 .. v12}, Lcom/zte/mifavor/widget/AlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    .line 529
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 530
    return-void

    .line 483
    .end local v11    # "hasCustomView":Z
    .end local v14    # "customView":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_9

    .line 484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 485
    .local v16, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v4, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    .line 486
    .restart local v14    # "customView":Landroid/view/View;
    goto/16 :goto_0

    .line 487
    .end local v14    # "customView":Landroid/view/View;
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    :cond_9
    const/4 v14, 0x0

    .restart local v14    # "customView":Landroid/view/View;
    goto/16 :goto_0

    .line 490
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 509
    .restart local v11    # "hasCustomView":Z
    :cond_b
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 519
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    sget v18, Lcom/zte/extres/R$id;->titleDividerTop:I

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .restart local v15    # "divider":Landroid/view/View;
    goto :goto_3
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 416
    packed-switch p1, :pswitch_data_0

    .line 424
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 418
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 422
    :pswitch_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 402
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 403
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 404
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 240
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->selectContentView()I

    move-result v0

    .line 241
    .local v0, "contentView":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 242
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setupView()V

    .line 243
    invoke-direct {p0}, Lcom/zte/mifavor/widget/AlertController;->setupDecor()V

    .line 244
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 332
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 333
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 336
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_0
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 340
    iput-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 356
    :goto_0
    return-void

    .line 344
    :pswitch_1
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 345
    iput-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 349
    :pswitch_2
    iput-object p2, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 350
    iput-object p4, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0
    .param p1, "layoutHint"    # I

    .prologue
    .line 314
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mButtonPanelLayoutHint:I

    .line 315
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 269
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 366
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    .line 368
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 369
    if-eqz p1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconId:I

    .line 386
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 387
    if-eqz p1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/zte/mifavor/widget/AlertController;->mForceInverseBackground:Z

    .line 409
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 273
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 259
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    .line 283
    iput p1, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 285
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 291
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    .line 292
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    .line 293
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 294
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 301
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController;->mView:Landroid/view/View;

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewLayoutResId:I

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingSpecified:Z

    .line 304
    iput p2, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingLeft:I

    .line 305
    iput p3, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingTop:I

    .line 306
    iput p4, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingRight:I

    .line 307
    iput p5, p0, Lcom/zte/mifavor/widget/AlertController;->mViewSpacingBottom:I

    .line 308
    return-void
.end method
