.class Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "FmRadioFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioFavorite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioFavorite;


# direct methods
.method public constructor <init>(Lcom/mediatek/fmradio/FmRadioFavorite;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 382
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 383
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 384
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;

    .line 427
    .local v4, "viewHolder":Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 430
    .local v0, "currentStationFreq":I
    const-string v5, "COLUMN_STATION_TYPE"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 429
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 433
    .local v3, "stationType":I
    const-string v5, "COLUMN_STATION_FREQ"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 432
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 436
    .local v1, "stationFreq":I
    const-string v5, "COLUMN_STATION_NAME"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 435
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "stationName":Ljava/lang/String;
    if-ne v1, v0, :cond_0

    .line 438
    iget-object v5, v4, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mIsCurrentStationView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    :goto_0
    const/4 v5, 0x2

    if-ne v5, v3, :cond_1

    .line 443
    iget-object v5, v4, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    .line 444
    const v6, 0x7f0201e0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 449
    :goto_1
    iget-object v5, v4, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 450
    iget-object v5, v4, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mStationFreqView:Landroid/widget/TextView;

    .line 451
    invoke-static {v1}, Lcom/mediatek/fmradio/FmRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v6

    .line 450
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v5, v4, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    return-void

    .line 440
    :cond_0
    iget-object v5, v4, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mIsCurrentStationView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v5, v4, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    .line 447
    const v6, 0x7f0201df

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 398
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 399
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;

    invoke-direct {v1}, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;-><init>()V

    .line 401
    .local v1, "viewHolder":Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;
    const v2, 0x7f06009d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 400
    iput-object v2, v1, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mIsCurrentStationView:Landroid/widget/ImageView;

    .line 403
    const v2, 0x7f0600a1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 402
    iput-object v2, v1, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    .line 405
    const v2, 0x7f06009e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 404
    iput-object v2, v1, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mStationFreqView:Landroid/widget/TextView;

    .line 407
    const v2, 0x7f0600a0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 406
    iput-object v2, v1, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mStationNameView:Landroid/widget/TextView;

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 409
    iget-object v2, v1, Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;->mStationTypeView:Landroid/widget/ImageView;

    .line 410
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    # getter for: Lcom/mediatek/fmradio/FmRadioFavorite;->mStationTypeBtnOnClick:Landroid/view/View$OnClickListener;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioFavorite;->access$2(Lcom/mediatek/fmradio/FmRadioFavorite;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    return-object v0
.end method
