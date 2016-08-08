.class Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectShareAppDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectShareAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "myAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/shotcutkey/SelectShareAppDialog;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/SelectShareAppDialog;)V
    .locals 2

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 295
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$1(Lcom/android/shotcutkey/SelectShareAppDialog;)Landroid/content/Context;

    move-result-object v0

    .line 296
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 295
    iput-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 297
    return-void
.end method

.method static synthetic access$0(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)Lcom/android/shotcutkey/SelectShareAppDialog;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->this$0:Lcom/android/shotcutkey/SelectShareAppDialog;

    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->mListInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$2(Lcom/android/shotcutkey/SelectShareAppDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 311
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 319
    .local v0, "holder":Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;
    iget-object v3, p0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030043

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 320
    new-instance v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;
    invoke-direct {v0, p0, v2}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;-><init>(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;Landroid/view/View;)V

    .line 321
    .restart local v0    # "holder":Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;

    .line 332
    .local v1, "info":Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;
    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 333
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    :goto_0
    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 339
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_1
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->raidoButton:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v3, v6}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setVisibility(I)V

    .line 346
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$3()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$4()Ljava/lang/String;

    move-result-object v3

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView() arg0 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 349
    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 350
    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 347
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_0
    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 352
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$3()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 353
    # getter for: Lcom/android/shotcutkey/SelectShareAppDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/SelectShareAppDialog;->access$4()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getView() name = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const v4, 0x7f070022

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->raidoButton:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v3, v6}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setEnabled(Z)V

    .line 359
    :cond_2
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->raidoButton:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v1}, Lcom/android/shotcutkey/SelectShareAppDialog$ListItemInfo;->getChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 360
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->raidoButton:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setTag(Ljava/lang/Object;)V

    .line 361
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->raidoButton:Lcom/zte/mifavor/widget/RadioButtonZTE;

    new-instance v4, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$1;-><init>(Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter;)V

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    return-object v2

    .line 335
    :cond_3
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 341
    :cond_4
    iget-object v3, v0, Lcom/android/shotcutkey/SelectShareAppDialog$myAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
