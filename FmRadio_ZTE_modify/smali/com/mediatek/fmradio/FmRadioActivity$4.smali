.class Lcom/mediatek/fmradio/FmRadioActivity$4;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/fmradio/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/fmradio/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/fmradio/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mediatek/fmradio/FmRadioActivity$4;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const v9, 0x7f0600b4

    const v8, 0x7f0600b3

    const/4 v7, 0x1

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 252
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity$4;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mService:Lcom/mediatek/fmradio/FmRadioService;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioActivity;->access$3(Lcom/mediatek/fmradio/FmRadioActivity;)Lcom/mediatek/fmradio/FmRadioService;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity$4;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mIsPlaying:Z
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioActivity;->access$4(Lcom/mediatek/fmradio/FmRadioActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity$4;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    invoke-virtual {v3}, Lcom/mediatek/fmradio/FmRadioActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 256
    .local v1, "inflater":Landroid/view/MenuInflater;
    const v3, 0x7f0f0003

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 258
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity$4;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioActivity;->access$6(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v0

    .line 259
    .local v0, "freq":I
    const/4 v2, 0x0

    .line 260
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity$4;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioActivity;->access$6(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/mediatek/fmradio/FmRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity$4;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioActivity;->access$6(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v3

    .line 262
    const/4 v4, 0x2

    .line 261
    invoke-static {v3, v0, v4}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 271
    :goto_1
    const v3, 0x7f0600b2

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 272
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_4

    .line 273
    :cond_2
    int-to-float v3, v0

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 266
    :cond_3
    iget-object v3, p0, Lcom/mediatek/fmradio/FmRadioActivity$4;->this$0:Lcom/mediatek/fmradio/FmRadioActivity;

    # getter for: Lcom/mediatek/fmradio/FmRadioActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/fmradio/FmRadioActivity;->access$6(Lcom/mediatek/fmradio/FmRadioActivity;)Landroid/content/Context;

    move-result-object v3

    .line 267
    const/4 v4, 0x3

    .line 266
    invoke-static {v3, v0, v4}, Lcom/mediatek/fmradio/FmRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 269
    invoke-interface {p1, v9}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 275
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    int-to-float v4, v0

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 276
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0
.end method
