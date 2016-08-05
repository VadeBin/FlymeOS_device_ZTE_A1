.class public Lcom/zte/fingerprint/datatype/CommonListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommonListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/fingerprint/datatype/CommonListAdapter$ListViewCallBacks;
    }
.end annotation


# instance fields
.field listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/datatype/DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listViewCallBacks:Lcom/zte/fingerprint/datatype/CommonListAdapter$ListViewCallBacks;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/datatype/DataInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/datatype/DataInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    .line 25
    invoke-static {p2}, Lcom/zte/fingerprint/utils/StringUtils;->isObjNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iput-object p1, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->mContext:Landroid/content/Context;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-static {v0}, Lcom/zte/fingerprint/utils/StringUtils;->hasChildren(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/zte/fingerprint/datatype/DataInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/fingerprint/datatype/DataInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/datatype/CommonListAdapter;->getItem(I)Lcom/zte/fingerprint/datatype/DataInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 57
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listViewCallBacks:Lcom/zte/fingerprint/datatype/CommonListAdapter$ListViewCallBacks;

    invoke-virtual {p0, p1}, Lcom/zte/fingerprint/datatype/CommonListAdapter;->getItem(I)Lcom/zte/fingerprint/datatype/DataInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/zte/fingerprint/datatype/CommonListAdapter$ListViewCallBacks;->updateViewInfo(Lcom/zte/fingerprint/datatype/DataInfo;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public removeItem(I)V
    .locals 1
    .param p1, "postion"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Lcom/zte/fingerprint/datatype/CommonListAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/fingerprint/datatype/DataInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/zte/fingerprint/datatype/DataInfo;>;"
    iput-object p1, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listItems:Ljava/util/List;

    .line 76
    invoke-virtual {p0}, Lcom/zte/fingerprint/datatype/CommonListAdapter;->notifyDataSetChanged()V

    .line 77
    return-void
.end method

.method public setListViewCallBacks(Lcom/zte/fingerprint/datatype/CommonListAdapter$ListViewCallBacks;)V
    .locals 0
    .param p1, "listViewCallBacks"    # Lcom/zte/fingerprint/datatype/CommonListAdapter$ListViewCallBacks;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zte/fingerprint/datatype/CommonListAdapter;->listViewCallBacks:Lcom/zte/fingerprint/datatype/CommonListAdapter$ListViewCallBacks;

    .line 72
    return-void
.end method
