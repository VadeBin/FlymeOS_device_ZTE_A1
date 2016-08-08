.class Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectShareAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectShareAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/shotcutkey/SelectShareAppActivity;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/SelectShareAppActivity;)V
    .locals 2

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 206
    # getter for: Lcom/android/shotcutkey/SelectShareAppActivity;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/shotcutkey/SelectShareAppActivity;->access$0(Lcom/android/shotcutkey/SelectShareAppActivity;)Landroid/content/Context;

    move-result-object v0

    .line 207
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 206
    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 208
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectShareAppActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectShareAppActivity;->access$1(Lcom/android/shotcutkey/SelectShareAppActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppActivity;

    # getter for: Lcom/android/shotcutkey/SelectShareAppActivity;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectShareAppActivity;->access$1(Lcom/android/shotcutkey/SelectShareAppActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 222
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

    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 229
    .local v0, "holder":Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030043

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 231
    new-instance v0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;
    invoke-direct {v0, p0, v2}, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;-><init>(Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;Landroid/view/View;)V

    .line 232
    .restart local v0    # "holder":Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;

    .line 240
    .local v1, "info":Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;
    # getter for: Lcom/android/shotcutkey/SelectShareAppActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppActivity;->access$2()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    # getter for: Lcom/android/shotcutkey/SelectShareAppActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppActivity;->access$3()Ljava/lang/String;

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

    .line 243
    :cond_1
    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 244
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    :goto_1
    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 250
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :goto_2
    return-object v2

    .line 234
    .end local v1    # "info":Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;
    :cond_2
    move-object v2, p2

    .line 235
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;
    check-cast v0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;
    goto :goto_0

    .line 246
    .restart local v1    # "info":Lcom/android/shotcutkey/SelectShareAppActivity$ListItemInfo;
    :cond_3
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 252
    :cond_4
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppActivity$myAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
