.class public Lcom/mediatek/fmradio/FmRadioFavorite;
.super Landroid/app/Activity;
.source "FmRadioFavorite.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;
.implements Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;
.implements Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;
.implements Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;,
        Lcom/mediatek/fmradio/FmRadioFavorite$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/mediatek/fmradio/dialogs/DeleteStationDialog$DeleteStationListener;",
        "Lcom/mediatek/fmradio/dialogs/RenameStationDialog$RenameStationListener;",
        "Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog$SwitchFreqListener;",
        "Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog$CancelSearchListener;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_RESULT:Ljava/lang/String; = "ACTIVITY_RESULT"

.field private static final FAVORITE_FREQ:Ljava/lang/String; = "FAVORITE_FREQ"

.field private static final FAVORITE_NAME:Ljava/lang/String; = "FAVORITE_NAME"

.field private static final TAG:Ljava/lang/String; = "FmRx/Favorite"


# instance fields
.field private mAdapter:Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

.field private mChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

.field private mContext:Landroid/content/Context;

.field private mDlgStationFreq:I

.field private mDlgStationName:Ljava/lang/String;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mLvFavorites:Landroid/widget/ListView;

.field private mStationTypeBtnOnClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 98
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mAdapter:Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

    .line 99
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    .line 103
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 104
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .line 105
    iput-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    .line 472
    new-instance v0, Lcom/mediatek/fmradio/FmRadioFavorite$1;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioFavorite$1;-><init>(Lcom/mediatek/fmradio/FmRadioFavorite;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mStationTypeBtnOnClick:Landroid/view/View$OnClickListener;

    .line 83
    return-void
.end method

.method static synthetic access$1(Lcom/mediatek/fmradio/FmRadioFavorite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0, p1, p2}, Lcom/mediatek/fmradio/FmRadioFavorite;->sendBroadcastToFmRadioService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/mediatek/fmradio/FmRadioFavorite;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mStationTypeBtnOnClick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mediatek/fmradio/FmRadioFavorite;)Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mAdapter:Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mediatek/fmradio/FmRadioFavorite;)Z
    .locals 1

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->dismissNoAntennaDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/mediatek/fmradio/FmRadioFavorite;)V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->dismissSearchDialog()V

    return-void
.end method

.method private dismissNoAntennaDialog()Z
    .locals 3

    .prologue
    .line 721
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    .line 722
    const-string v2, "NoAntenna"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 721
    check-cast v0, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    .line 723
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->dismissAllowingStateLoss()V

    .line 725
    const/4 v1, 0x1

    .line 727
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissSearchDialog()V
    .locals 3

    .prologue
    .line 584
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    .line 585
    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 584
    check-cast v0, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;

    .line 586
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;
    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->dismissAllowingStateLoss()V

    .line 589
    :cond_0
    return-void
.end method

.method private sendBroadcastToFmRadioService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 703
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioFavorite;->sendBroadcast(Landroid/content/Intent;)V

    .line 706
    return-void
.end method

.method private showDeleteStationDialog(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 597
    invoke-static {p1}, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;->newInstance(I)Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;

    move-result-object v0

    .line 598
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Delete"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/DeleteStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 600
    return-void
.end method

.method private showRenameDialog(I)V
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 605
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 606
    const/4 v3, 0x2

    .line 605
    invoke-static {v2, p1, v3}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 611
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 612
    :cond_0
    int-to-float v2, p1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 614
    :cond_1
    invoke-static {v0}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->newInstance(Ljava/lang/String;)Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    move-result-object v1

    .line 615
    .local v1, "newFragment":Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "Rename"

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 616
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 617
    return-void

    .line 608
    .end local v1    # "newFragment":Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 609
    const/4 v3, 0x3

    .line 608
    invoke-static {v2, p1, v3}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showSearchDialog()V
    .locals 3

    .prologue
    .line 578
    invoke-static {}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->newInstance()Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;

    move-result-object v0

    .line 579
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/SearchChannelsDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 581
    return-void
.end method

.method private showSwitchFreqDialog(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 592
    invoke-static {p1}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->newInstance(I)Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;

    move-result-object v0

    .line 593
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "SwitchFreq"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/SwitchFreqDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 594
    return-void
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .prologue
    .line 685
    const-string v0, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STOPSCAN"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/mediatek/fmradio/FmRadioFavorite;->sendBroadcastToFmRadioService(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->dismissSearchDialog()V

    .line 687
    return-void
.end method

.method public deleteStation(I)V
    .locals 2
    .param p1, "freq"    # I

    .prologue
    const/4 v1, 0x2

    .line 692
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/mediatek/fmradio/FmRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v0

    .line 693
    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/mediatek/fmradio/FmRadioStation;->deleteStationInDb(Landroid/content/Context;II)V

    .line 700
    :goto_0
    return-void

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 698
    const/4 v1, 0x3

    .line 697
    invoke-static {v0, p1, v1}, Lcom/mediatek/fmradio/FmRadioStation;->deleteStationInDb(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 290
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    check-cast v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 292
    .local v1, "position":I
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x0

    .line 293
    iget-object v6, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 292
    invoke-interface {v4, v1, v5, v6}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, "itemView":Landroid/view/View;
    const v4, 0x7f06009e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 295
    check-cast v2, Landroid/widget/TextView;

    .line 298
    .local v2, "stationFreqView":Landroid/widget/TextView;
    const v4, 0x7f0600a0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 297
    check-cast v3, Landroid/widget/TextView;

    .line 300
    .local v3, "stationNameView":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 299
    invoke-static {v4}, Lcom/mediatek/fmradio/FmRadioUtils;->computeStation(F)I

    move-result v4

    iput v4, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    .line 301
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 303
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 313
    const-string v4, "FmRx/Favorite"

    const-string v5, "invalid menu item"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 305
    :pswitch_0
    iget v4, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRadioFavorite;->showRenameDialog(I)V

    goto :goto_0

    .line 309
    :pswitch_1
    iget v4, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    invoke-direct {p0, v4}, Lcom/mediatek/fmradio/FmRadioFavorite;->showDeleteStationDialog(I)V

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600b1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x3

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "FmRx/Favorite"

    const-string v1, "begin FmRadioFavorite.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, v6}, Lcom/mediatek/fmradio/FmRadioFavorite;->setVolumeControlStream(I)V

    .line 118
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioFavorite;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    .line 121
    .local v7, "actionBar":Landroid/app/ActionBar;
    const v0, 0x7f09004d

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 122
    invoke-virtual {v7, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0x75e69f

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    .line 126
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const-string v0, "FAVORITE_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationName:Ljava/lang/String;

    .line 129
    const-string v0, "FAVORITE_FREQ"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    .line 132
    :cond_0
    new-instance v0, Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

    const v3, 0x7f030043

    .line 133
    new-array v5, v6, [Ljava/lang/String;

    const-string v1, "COLUMN_STATION_TYPE"

    aput-object v1, v5, v9

    .line 134
    const-string v1, "COLUMN_STATION_FREQ"

    aput-object v1, v5, v2

    const/4 v1, 0x2

    .line 135
    const-string v2, "COLUMN_STATION_NAME"

    aput-object v2, v5, v1

    .line 136
    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v1, p0

    move-object v2, p0

    .line 137
    invoke-direct/range {v0 .. v6}, Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;-><init>(Lcom/mediatek/fmradio/FmRadioFavorite;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 132
    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mAdapter:Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

    .line 138
    const v0, 0x7f06006e

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 139
    const v0, 0x7f06006f

    invoke-virtual {p0, v0}, Lcom/mediatek/fmradio/FmRadioFavorite;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 140
    .local v8, "emptyView":Landroid/widget/TextView;
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mAdapter:Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v9, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 144
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 145
    new-instance v1, Lcom/mediatek/fmradio/FmRadioFavorite$2;

    invoke-direct {v1, p0}, Lcom/mediatek/fmradio/FmRadioFavorite$2;-><init>(Lcom/mediatek/fmradio/FmRadioFavorite;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mLvFavorites:Landroid/widget/ListView;

    .line 189
    new-instance v1, Lcom/mediatek/fmradio/FmRadioFavorite$3;

    invoke-direct {v1, p0}, Lcom/mediatek/fmradio/FmRadioFavorite$3;-><init>(Lcom/mediatek/fmradio/FmRadioFavorite;)V

    .line 178
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 218
    new-instance v0, Lcom/mediatek/fmradio/FmRadioFavorite$4;

    invoke-direct {v0, p0}, Lcom/mediatek/fmradio/FmRadioFavorite$4;-><init>(Lcom/mediatek/fmradio/FmRadioFavorite;)V

    iput-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    .line 275
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioService;->registerExitListener(Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;)V

    .line 276
    const-string v0, "FmRx/Favorite"

    const-string v1, "end FmRadioFavorite.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void

    .line 136
    :array_0
    .array-data 4
        0x7f0600a1
        0x7f06009e
        0x7f0600a0
    .end array-data
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    .line 331
    sget-object v2, Lcom/mediatek/fmradio/FmRadioStation$Station;->CONTENT_URI:Landroid/net/Uri;

    .line 332
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "COLUMN_STATION_TYPE IN (?, ?)"

    .line 334
    .local v4, "select":Ljava/lang/String;
    const-string v6, "COLUMN_STATION_FREQ"

    .line 335
    .local v6, "order":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    .line 336
    sget-object v3, Lcom/mediatek/fmradio/FmRadioStation;->COLUMNS:[Ljava/lang/String;

    new-array v5, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 337
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    const/4 v1, 0x1

    .line 338
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    move-object v1, p0

    .line 335
    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .local v0, "cursorLoader":Landroid/content/CursorLoader;
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 519
    const-string v1, "FmRx/Favorite"

    const-string v2, "start onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 521
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 522
    const-string v1, "FmRx/Favorite"

    const-string v2, "end onCreateOptionsMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 465
    const-string v0, "FmRx/Favorite"

    const-string v1, "onDestory()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->dismissSearchDialog()V

    .line 467
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->dismissNoAntennaDialog()Z

    .line 468
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mChannelListListener:Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;

    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioService;->unregisterExitListener(Lcom/mediatek/fmradio/FmRadioService$OnChannelListListener;)V

    .line 469
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 470
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mAdapter:Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

    invoke-virtual {v0, p2}, Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 354
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/content/Loader;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/mediatek/fmradio/FmRadioFavorite;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mAdapter:Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 365
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 547
    const-string v2, "FmRx/Favorite"

    const-string v3, "start onOptionsItemSelected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 567
    const-string v2, "FmRx/Favorite"

    const-string v3, "Error: Invalid options menu item."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    const-string v2, "FmRx/Favorite"

    const-string v3, "end onOptionsItemSelected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 550
    :sswitch_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 554
    :sswitch_1
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 555
    .local v0, "currentStationFreq":I
    invoke-direct {p0, v0}, Lcom/mediatek/fmradio/FmRadioFavorite;->showSwitchFreqDialog(I)V

    goto :goto_0

    .line 559
    .end local v0    # "currentStationFreq":I
    :sswitch_2
    invoke-direct {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->showSearchDialog()V

    .line 560
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioStation;->cleanSearchedStations(Landroid/content/Context;)V

    .line 561
    iget-object v2, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v1

    .line 562
    .local v1, "freq":I
    const-string v2, "com.mediatek.FMRadio.FMRadioService.ACTION_TOFMSERVICE_STARTSCAN"

    .line 563
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 562
    invoke-direct {p0, v2, v3}, Lcom/mediatek/fmradio/FmRadioFavorite;->sendBroadcastToFmRadioService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0600a7 -> :sswitch_1
        0x7f0600a8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 458
    const-string v0, "FAVORITE_NAME"

    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "FAVORITE_FREQ"

    iget v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 460
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 461
    return-void
.end method

.method public renameStationDone()V
    .locals 7

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    .line 622
    const-string v5, "Rename"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 621
    check-cast v1, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;

    .line 623
    .local v1, "dialogFragment":Lcom/mediatek/fmradio/dialogs/RenameStationDialog;
    if-nez v1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/fmradio/dialogs/RenameStationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 628
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 632
    const v4, 0x7f06005a

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 633
    .local v2, "editText":Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 640
    .local v3, "newName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ltz v4, :cond_0

    .line 645
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    invoke-static {v4, v5}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 646
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 647
    const/4 v5, 0x2

    iget v6, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    .line 646
    invoke-static {v4, v3, v5, v6}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 649
    :cond_2
    iget-object v4, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 650
    const/4 v5, 0x3

    iget v6, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mDlgStationFreq:I

    .line 649
    invoke-static {v4, v3, v5, v6}, Lcom/mediatek/fmradio/FmRadioStation;->updateStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public showNoAntennaDialog()V
    .locals 3

    .prologue
    .line 712
    invoke-static {}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->newInstance()Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;

    move-result-object v0

    .line 713
    .local v0, "newFragment":Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "NoAntenna"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/fmradio/dialogs/NoAntennaDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 715
    return-void
.end method

.method public switchFreqDone(I)V
    .locals 6
    .param p1, "frequency"    # I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 656
    const-string v1, "FmRx/Favorite"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "switchFreqDone.frequency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    move v0, p1

    .line 658
    .local v0, "newStation":I
    invoke-static {v0}, Lcom/mediatek/fmradio/FmRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 662
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    .line 663
    const/4 v2, 0x2

    .line 662
    invoke-static {v1, v0, v2}, Lcom/mediatek/fmradio/FmRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v1

    .line 663
    if-nez v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v5}, Lcom/mediatek/fmradio/FmRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v1

    .line 665
    if-eqz v1, :cond_1

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 667
    const v2, 0x7f0900c5

    .line 666
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 668
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 674
    :goto_0
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mAdapter:Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

    invoke-virtual {v1}, Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;->notifyDataSetChanged()V

    .line 680
    :goto_1
    return-void

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/mediatek/fmradio/FmRadioFavorite;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2, v0, v5}, Lcom/mediatek/fmradio/FmRadioStation;->insertStationToDb(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    .line 676
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/fmradio/FmRadioFavorite;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 677
    const v2, 0x7f090068

    .line 676
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 678
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
