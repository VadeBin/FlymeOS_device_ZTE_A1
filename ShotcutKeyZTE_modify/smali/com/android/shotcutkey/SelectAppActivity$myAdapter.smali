.class Lcom/android/shotcutkey/SelectAppActivity$myAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectAppActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;,
        Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mFilter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;

.field final synthetic this$0:Lcom/android/shotcutkey/SelectAppActivity;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/SelectAppActivity;)V
    .locals 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 197
    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/shotcutkey/SelectAppActivity;->access$6(Lcom/android/shotcutkey/SelectAppActivity;)Landroid/content/Context;

    move-result-object v0

    .line 198
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 197
    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 199
    return-void
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)Lcom/android/shotcutkey/SelectAppActivity;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectAppActivity;->access$7(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->mFilter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;

    invoke-direct {v0, p0}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;-><init>(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;)V

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->mFilter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->mFilter:Lcom/android/shotcutkey/SelectAppActivity$myAdapter$MyFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectAppActivity;->access$7(Lcom/android/shotcutkey/SelectAppActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 213
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x8

    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 220
    .local v0, "holder":Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 221
    :cond_0
    iget-object v3, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030043

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 222
    new-instance v0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;
    invoke-direct {v0, p0, v2}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;-><init>(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;Landroid/view/View;)V

    .line 223
    .restart local v0    # "holder":Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 229
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/SelectAppActivity$myAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;

    .line 231
    .local v1, "info":Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;
    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectAppActivity;->access$0()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    # getter for: Lcom/android/shotcutkey/SelectAppActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectAppActivity;->access$1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView() info = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  arg1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_1
    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 235
    iget-object v3, v0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :goto_1
    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 241
    iget-object v3, v0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_2
    return-object v2

    .line 225
    .end local v1    # "info":Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;
    :cond_2
    move-object v2, p2

    .line 226
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;
    check-cast v0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;
    goto :goto_0

    .line 237
    .restart local v1    # "info":Lcom/android/shotcutkey/SelectAppActivity$ListItemInfo;
    :cond_3
    iget-object v3, v0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 243
    :cond_4
    iget-object v3, v0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
