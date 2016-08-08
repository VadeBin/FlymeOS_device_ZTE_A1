.class Lcom/mediatek/fmradio/FmRadioFavorite$3;
.super Ljava/lang/Object;
.source "FmRadioFavorite.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/fmradio/FmRadioFavorite;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioFavorite;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioFavorite;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioFavorite$3;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v6, 0x0

    .line 193
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioFavorite$3;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    invoke-virtual {v5}, Lcom/mediatek/fmradio/FmRadioFavorite;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 194
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v5, 0x7f0f0003

    invoke-virtual {v1, v5, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 195
    const v5, 0x7f0600b1

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 196
    const v5, 0x7f0600b2

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 197
    const v5, 0x7f0600b3

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    const v5, 0x7f0600b4

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 199
    const v5, 0x7f0600b5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    iget-object v5, p0, Lcom/mediatek/fmradio/FmRadioFavorite$3;->this$0:Lcom/mediatek/fmradio/FmRadioFavorite;

    # getter for: Lcom/mediatek/fmradio/FmRadioFavorite;->mAdapter:Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;
    invoke-static {v5}, Lcom/mediatek/fmradio/FmRadioFavorite;->access$3(Lcom/mediatek/fmradio/FmRadioFavorite;)Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/fmradio/FmRadioFavorite$ChannelListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 202
    .local v0, "cursor":Landroid/database/Cursor;
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 203
    .local v2, "pos":I
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 205
    const-string v5, "COLUMN_STATION_NAME"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 204
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "stationName":Ljava/lang/String;
    const-string v5, "COLUMN_STATION_FREQ"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 206
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 208
    .local v3, "stationFreq":I
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    .line 209
    :cond_0
    int-to-float v5, v3

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    int-to-float v6, v3

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 212
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0
.end method
