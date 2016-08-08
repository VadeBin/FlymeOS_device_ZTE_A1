.class public Lcom/android/bluetooth/map/BluetoothMapSubAdapter;
.super Landroid/widget/BaseAdapter;
.source "BluetoothMapSubAdapter.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x1020006

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance v0, Lcom/mediatek/widget/AccountItemView;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/mediatek/widget/AccountItemView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "accountView":Lcom/mediatek/widget/AccountItemView;
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 68
    .local v1, "subRecord":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 69
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/mediatek/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v3}, Lcom/mediatek/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v6}, Lcom/mediatek/widget/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/widget/AccountItemView;->setClickable(Z)V

    .line 80
    :goto_2
    return-object v0

    .end local v0    # "accountView":Lcom/mediatek/widget/AccountItemView;
    .end local v1    # "subRecord":Landroid/telephony/SubscriptionInfo;
    :cond_0
    move-object v0, p2

    .line 63
    check-cast v0, Lcom/mediatek/widget/AccountItemView;

    .restart local v0    # "accountView":Lcom/mediatek/widget/AccountItemView;
    goto :goto_0

    .line 69
    .restart local v1    # "subRecord":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v0, v5}, Lcom/mediatek/widget/AccountItemView;->setClickable(Z)V

    .line 76
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_3

    :goto_3
    invoke-virtual {v0, v3}, Lcom/mediatek/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mediatek/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v0, v6}, Lcom/mediatek/widget/AccountItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 76
    :cond_3
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method public setAdapterData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSubAdapter;->mList:Ljava/util/List;

    .line 85
    return-void
.end method
