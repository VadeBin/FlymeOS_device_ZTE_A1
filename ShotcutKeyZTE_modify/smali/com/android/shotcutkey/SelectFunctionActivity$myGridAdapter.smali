.class Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectFunctionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectFunctionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myGridAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/SelectFunctionActivity;


# direct methods
.method private constructor <init>(Lcom/android/shotcutkey/SelectFunctionActivity;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/shotcutkey/SelectFunctionActivity;Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;-><init>(Lcom/android/shotcutkey/SelectFunctionActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mGridData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mGridData:Ljava/util/List;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 271
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 278
    if-nez p2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$1(Lcom/android/shotcutkey/SelectFunctionActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 280
    new-instance v0, Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;

    iget-object v2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-direct {v0, v2, v4}, Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;-><init>(Lcom/android/shotcutkey/SelectFunctionActivity;Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;)V

    .line 282
    .local v0, "holder":Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;
    const v2, 0x7f060067

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 281
    iput-object v2, v0, Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;->image:Landroid/widget/ImageView;

    .line 284
    const v2, 0x7f060068

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 283
    iput-object v2, v0, Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;->text:Landroid/widget/TextView;

    .line 285
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 295
    :goto_0
    iget-object v3, v0, Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;->image:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mGridData:Ljava/util/List;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;

    iget v2, v2, Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;->image:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    iget-object v3, v0, Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$myGridAdapter;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    # getter for: Lcom/android/shotcutkey/SelectFunctionActivity;->mGridData:Ljava/util/List;
    invoke-static {v2}, Lcom/android/shotcutkey/SelectFunctionActivity;->access$0(Lcom/android/shotcutkey/SelectFunctionActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;

    iget v2, v2, Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;->text:I

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 298
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 299
    const/4 v2, -0x1

    .line 300
    const/16 v3, 0x176

    .line 298
    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 301
    .local v1, "param":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    return-object p2

    .line 287
    .end local v0    # "holder":Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;
    .end local v1    # "param":Landroid/widget/AbsListView$LayoutParams;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;

    .restart local v0    # "holder":Lcom/android/shotcutkey/SelectFunctionActivity$gridViewHolder;
    goto :goto_0
.end method
