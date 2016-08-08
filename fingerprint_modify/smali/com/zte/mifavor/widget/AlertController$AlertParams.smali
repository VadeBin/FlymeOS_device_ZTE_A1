.class public Lcom/zte/mifavor/widget/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    .line 835
    iput v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconAttrId:I

    .line 858
    iput-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 862
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    .line 870
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 886
    iput-object p1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 887
    iput-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCancelable:Z

    .line 888
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 889
    return-void
.end method

.method private createListView(Lcom/zte/mifavor/widget/AlertController;)V
    .locals 10
    .param p1, "dialog"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 952
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/zte/mifavor/widget/AlertController;->mListLayout:I
    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$900(Lcom/zte/mifavor/widget/AlertController;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/zte/mifavor/widget/AlertController$RecycleListView;

    .line 956
    .local v6, "listView":Lcom/zte/mifavor/widget/AlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 957
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 958
    new-instance v0, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;

    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    # getter for: Lcom/zte/mifavor/widget/AlertController;->mMultiChoiceItemLayout:I
    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$1000(Lcom/zte/mifavor/widget/AlertController;)I

    move-result v3

    sget v4, Lcom/zte/extres/R$id;->text1:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/AlertController$AlertParams$1;-><init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/zte/mifavor/widget/AlertController$RecycleListView;)V

    .line 1011
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 1012
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/zte/mifavor/widget/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1018
    :cond_0
    # setter for: Lcom/zte/mifavor/widget/AlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->access$1302(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1019
    iget v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    # setter for: Lcom/zte/mifavor/widget/AlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/zte/mifavor/widget/AlertController;->access$1402(Lcom/zte/mifavor/widget/AlertController;I)I

    .line 1021
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 1022
    new-instance v1, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/zte/mifavor/widget/AlertController$AlertParams$3;-><init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Lcom/zte/mifavor/widget/AlertController;)V

    invoke-virtual {v6, v1}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1045
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 1046
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1049
    :cond_2
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 1050
    invoke-virtual {v6, v9}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1054
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1055
    # setter for: Lcom/zte/mifavor/widget/AlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/zte/mifavor/widget/AlertController;->access$1502(Lcom/zte/mifavor/widget/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 1056
    return-void

    .line 973
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/zte/mifavor/widget/AlertController$AlertParams$2;-><init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/zte/mifavor/widget/AlertController$RecycleListView;Lcom/zte/mifavor/widget/AlertController;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1000
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    # getter for: Lcom/zte/mifavor/widget/AlertController;->mSingleChoiceItemLayout:I
    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$1100(Lcom/zte/mifavor/widget/AlertController;)I

    move-result v2

    .line 1002
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 1003
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 1000
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_6
    # getter for: Lcom/zte/mifavor/widget/AlertController;->mListItemLayout:I
    invoke-static {p1}, Lcom/zte/mifavor/widget/AlertController;->access$1200(Lcom/zte/mifavor/widget/AlertController;)I

    move-result v2

    goto :goto_3

    .line 1003
    .restart local v2    # "layout":I
    :cond_7
    new-instance v0, Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    sget v3, Lcom/zte/extres/R$id;->text1:I

    iget-object v4, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/zte/mifavor/widget/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 1006
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v4, v9, [Ljava/lang/String;

    iget-object v7, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v7, v4, v5

    new-array v7, v9, [I

    sget v8, Lcom/zte/extres/R$id;->text1:I

    aput v8, v7, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 1031
    .end local v2    # "layout":I
    :cond_9
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 1032
    new-instance v1, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/zte/mifavor/widget/AlertController$AlertParams$4;-><init>(Lcom/zte/mifavor/widget/AlertController$AlertParams;Lcom/zte/mifavor/widget/AlertController$RecycleListView;Lcom/zte/mifavor/widget/AlertController;)V

    invoke-virtual {v6, v1}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 1051
    :cond_a
    iget-boolean v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 1052
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Lcom/zte/mifavor/widget/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/zte/mifavor/widget/AlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/zte/mifavor/widget/AlertController;

    .prologue
    const/4 v3, 0x0

    .line 892
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 893
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 908
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 912
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 916
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 920
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/zte/mifavor/widget/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 923
    :cond_4
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 924
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setInverseBackgroundForced(Z)V

    .line 928
    :cond_5
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 929
    :cond_6
    invoke-direct {p0, p1}, Lcom/zte/mifavor/widget/AlertController$AlertParams;->createListView(Lcom/zte/mifavor/widget/AlertController;)V

    .line 931
    :cond_7
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 932
    iget-boolean v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_d

    .line 933
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/zte/mifavor/widget/AlertController;->setView(Landroid/view/View;IIII)V

    .line 949
    :cond_8
    :goto_1
    return-void

    .line 895
    :cond_9
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 896
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 898
    :cond_a
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 899
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 901
    :cond_b
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_c

    .line 902
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setIcon(I)V

    .line 904
    :cond_c
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconAttrId:I

    if-lez v0, :cond_0

    .line 905
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 936
    :cond_d
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    .line 938
    :cond_e
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_8

    .line 939
    iget v0, p0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lcom/zte/mifavor/widget/AlertController;->setView(I)V

    goto :goto_1
.end method
