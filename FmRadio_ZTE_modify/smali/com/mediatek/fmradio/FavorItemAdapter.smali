.class public Lcom/mediatek/fmradio/FavorItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "FavorItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 23
    iput-object p2, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 24
    invoke-static {p1}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCurrentStation:I

    .line 25
    return-void
.end method

.method private bindView(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v8, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;

    .line 102
    .local v4, "viewHolder":Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;
    iget-object v5, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 103
    iget-object v5, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 104
    const-string v7, "COLUMN_STATION_FREQ"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 103
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 105
    .local v2, "stationFreq":I
    iget-object v5, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 106
    const-string v7, "COLUMN_STATION_NAME"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 105
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "stationName":Ljava/lang/String;
    const-string v5, "FmRx/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "stationFreq="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", stationName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", position="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 108
    const-string v7, ", mCurrentStation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCurrentStation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v5, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 110
    .local v1, "normalColor":I
    iget-object v5, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 111
    .local v0, "currentColor":I
    iget-object v5, v4, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationFreqView:Landroid/widget/TextView;

    .line 112
    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v6, v4, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationFreqView:Landroid/widget/TextView;

    .line 114
    iget v5, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCurrentStation:I

    if-ne v5, v2, :cond_0

    move v5, v0

    :goto_0
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    rem-int/lit8 v5, p2, 0x4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 117
    iget-object v5, v4, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationSplitLine:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    .line 122
    iget-object v5, v4, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v5, v4, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    .line 124
    iget v6, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCurrentStation:I

    if-ne v6, v2, :cond_2

    .end local v0    # "currentColor":I
    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v5, v4, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_3
    return-void

    .restart local v0    # "currentColor":I
    :cond_0
    move v5, v1

    .line 115
    goto :goto_0

    .line 119
    :cond_1
    iget-object v5, v4, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationSplitLine:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 125
    goto :goto_2

    .line 128
    :cond_3
    iget-object v5, v4, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 63
    :cond_0
    const-wide/16 v2, -0x1

    .line 69
    :goto_0
    return-wide v2

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 66
    iget-object v1, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 67
    iget-object v2, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 68
    const-string v3, "COLUMN_STATION_FREQ"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 67
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 69
    .local v0, "stationFreq":I
    int-to-long v2, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 78
    iget-object v2, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03003c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    :goto_0
    if-nez v0, :cond_2

    .line 83
    const/4 v0, 0x0

    .line 97
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v0

    .line 80
    .restart local v0    # "view":Landroid/view/View;
    :cond_1
    move-object v0, p2

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FavorItemAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    new-instance v1, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;-><init>()V

    .line 89
    .local v1, "viewHolder":Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;
    const v2, 0x7f06006c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 88
    iput-object v2, v1, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationSplitLine:Landroid/widget/ImageView;

    .line 91
    const v2, 0x7f06006a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 90
    iput-object v2, v1, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationFreqView:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f06006b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 92
    iput-object v2, v1, Lcom/mediatek/fmradio/FavorItemAdapter$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v2, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCurrentStation:I

    .line 96
    invoke-direct {p0, v0, p1}, Lcom/mediatek/fmradio/FavorItemAdapter;->bindView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/mediatek/fmradio/FavorItemAdapter;->mCursor:Landroid/database/Cursor;

    .line 33
    return-void
.end method
