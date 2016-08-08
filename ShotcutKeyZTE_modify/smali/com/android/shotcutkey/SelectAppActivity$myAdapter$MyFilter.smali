.class Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;
.super Landroid/widget/Filter;
.source "SelectAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectAppActivity$myAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 272
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 274
    .local v3, "results":Landroid/widget/Filter$FilterResults;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v2, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 276
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "filterString":Ljava/lang/String;
    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectAppActivity;->access$0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectAppActivity;->access$1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "performFiltering() filterString = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    iget-object v4, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mListInfoBack:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity;->access$2(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 295
    :cond_1
    iput-object v2, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 296
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 298
    return-object v3

    .line 286
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mAppName:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity;->access$3(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 287
    iget-object v4, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mListInfoBack:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity;->access$2(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->appName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->access$0(Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 288
    iget-object v4, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mListInfoBack:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity;->access$2(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_4
    iget-object v4, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mAppName:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity;->access$3(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 290
    iget-object v4, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;

    move-result-object v4

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mListInfoBack:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/shotcutkey/SelectAppActivity;->access$2(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;

    move-result-object v1

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/shotcutkey/SelectAppActivity;->access$4(Lcom/android/shotcutkey/SelectAppActivity;Ljava/util/ArrayList;)V

    .line 307
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;

    move-result-object v0

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mAdapter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectAppActivity;->access$5(Lcom/android/shotcutkey/SelectAppActivity;)Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->notifyDataSetChanged()V

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;

    move-result-object v0

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mAdapter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectAppActivity;->access$5(Lcom/android/shotcutkey/SelectAppActivity;)Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
