.class public Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter$MenuListener;
    }
.end annotation


# instance fields
.field private mActivePosition:I

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter$MenuListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mActivePosition:I

    .line 27
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mItems:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 51
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/Item;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 76
    move-object v2, p2

    .line 77
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "item":Ljava/lang/Object;
    instance-of v3, v0, Lcom/zte/mifavor/widget/overlaydrawer/Category;

    if-eqz v3, :cond_2

    .line 80
    if-nez v2, :cond_0

    .line 81
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$layout;->menu_row_category:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :cond_0
    move-object v3, v2

    .line 84
    check-cast v3, Landroid/widget/TextView;

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/Category;

    .end local v0    # "item":Ljava/lang/Object;
    iget-object v4, v0, Lcom/zte/mifavor/widget/overlaydrawer/Category;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_0
    sget v3, Lcom/zte/extres/R$id;->mdActiveViewPosition:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 98
    iget v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mActivePosition:I

    if-ne p1, v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter$MenuListener;

    invoke-interface {v3, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter$MenuListener;->onActiveViewChanged(Landroid/view/View;)V

    .line 102
    :cond_1
    return-object v2

    .line 87
    .restart local v0    # "item":Ljava/lang/Object;
    :cond_2
    if-nez v2, :cond_3

    .line 88
    iget-object v3, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/zte/extres/R$layout;->menu_row_item:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    :cond_3
    move-object v1, v2

    .line 91
    check-cast v1, Landroid/widget/TextView;

    .local v1, "tv":Landroid/widget/TextView;
    move-object v3, v0

    .line 92
    check-cast v3, Lcom/zte/mifavor/widget/overlaydrawer/Item;

    iget-object v3, v3, Lcom/zte/mifavor/widget/overlaydrawer/Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/Item;

    .end local v0    # "item":Ljava/lang/Object;
    iget v3, v0, Lcom/zte/mifavor/widget/overlaydrawer/Item;->mIconRes:I

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zte/mifavor/widget/overlaydrawer/Item;

    return v0
.end method

.method public setActivePosition(I)V
    .locals 0
    .param p1, "activePosition"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mActivePosition:I

    .line 37
    return-void
.end method

.method public setListener(Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter$MenuListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter$MenuListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter;->mListener:Lcom/zte/mifavor/widget/overlaydrawer/MenuAdapter$MenuListener;

    .line 33
    return-void
.end method
