.class Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShareDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/shotcutkey/ShareDetailActivity;


# direct methods
.method private constructor <init>(Lcom/android/shotcutkey/ShareDetailActivity;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/shotcutkey/ShareDetailActivity;Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;-><init>(Lcom/android/shotcutkey/ShareDetailActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)Lcom/android/shotcutkey/ShareDetailActivity;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/shotcutkey/ShareDetailActivity;->access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 286
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v4, 0x8

    .line 292
    if-nez p2, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$2(Lcom/android/shotcutkey/ShareDetailActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030049

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 294
    new-instance v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    invoke-direct {v0, v1, p2}, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;-><init>(Lcom/android/shotcutkey/ShareDetailActivity;Landroid/view/View;)V

    .line 295
    .local v0, "holder":Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    :goto_0
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 301
    iget-object v1, v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    :goto_1
    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 307
    iget-object v1, v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->subTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 313
    :goto_2
    if-nez p1, :cond_0

    .line 314
    iget-object v1, v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->divider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_0
    iget-object v2, v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->radio:Lcom/zte/mifavor/widget/RadioButtonZTE;

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    invoke-virtual {v1}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->getChecked()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 317
    iget-object v1, v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->radio:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setTag(Ljava/lang/Object;)V

    .line 318
    iget-object v1, v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->radio:Lcom/zte/mifavor/widget/RadioButtonZTE;

    new-instance v2, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$1;-><init>(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)V

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    iget-object v1, v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->radio:Lcom/zte/mifavor/widget/RadioButtonZTE;

    new-instance v2, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter$2;-><init>(Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;)V

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 392
    return-object p2

    .line 297
    .end local v0    # "holder":Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;

    .restart local v0    # "holder":Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;
    goto :goto_0

    .line 303
    :cond_2
    iget-object v2, v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    .line 304
    invoke-virtual {v1}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 309
    :cond_3
    iget-object v2, v0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->subTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/shotcutkey/ShareDetailActivity$myListAdapter;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    # getter for: Lcom/android/shotcutkey/ShareDetailActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/shotcutkey/ShareDetailActivity;->access$1(Lcom/android/shotcutkey/ShareDetailActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;

    .line 310
    invoke-virtual {v1}, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->getSubTitle()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
