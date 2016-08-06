.class public Lcom/zte/mifavor/widget/ZTEPopupWindow;
.super Landroid/widget/PopupWindow;
.source "ZTEPopupWindow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEPopupWindow"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field public mItems:[Ljava/lang/CharSequence;

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x2

    .line 34
    invoke-direct {p0, v0, v0}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 35
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public setItems([Ljava/lang/CharSequence;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 6
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mItems:[Ljava/lang/CharSequence;

    .line 40
    iput-object p2, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 41
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 42
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/zte/extres/R$layout;->zte_popup_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContentView:Landroid/view/View;

    .line 43
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContentView:Landroid/view/View;

    sget v2, Lcom/zte/extres/R$id;->zte_popup_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mListView:Landroid/widget/ListView;

    .line 44
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContext:Landroid/content/Context;

    sget v4, Lcom/zte/extres/R$layout;->zte_popup_list:I

    iget-object v5, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/widget/ZTEPopupWindow;->setContentView(Landroid/view/View;)V

    .line 47
    iget-object v1, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    const-string v1, "ZTEPopupWindow"

    const-string v2, "gengbin setItems()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public showAtLocation(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "item"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 53
    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$drawable;->zte_popup_background:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/zte/mifavor/widget/ZTEPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/ZTEPopupWindow;->setOutsideTouchable(Z)V

    .line 55
    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/ZTEPopupWindow;->setTouchable(Z)V

    .line 56
    invoke-virtual {p0, v9}, Lcom/zte/mifavor/widget/ZTEPopupWindow;->setFocusable(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEPopupWindow;->update()V

    .line 58
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 59
    .local v3, "touchPoint":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 60
    .local v2, "mViewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->getLastTouchPoint(Landroid/graphics/Point;)V

    .line 64
    :cond_0
    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$dimen;->zte_popup_list_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 65
    .local v0, "listHeight":I
    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/zte/extres/R$dimen;->zte_popup_list_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 66
    .local v1, "listWidth":I
    iget-object v7, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 67
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 68
    .local v4, "windowHeigh":I
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 69
    .local v5, "windowWidth":I
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/ZTEPopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_3

    .line 70
    iget v7, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v4, 0x2

    if-le v7, v8, :cond_1

    .line 71
    iget v7, v3, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/zte/mifavor/widget/ZTEPopupWindow;->mItems:[Ljava/lang/CharSequence;

    array-length v8, v8

    mul-int/2addr v8, v0

    sub-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Point;->y:I

    .line 72
    :cond_1
    iget v7, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v8, v5, 0x2

    if-le v7, v8, :cond_2

    .line 73
    iget v7, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v7, v1

    iput v7, v3, Landroid/graphics/Point;->x:I

    .line 74
    :cond_2
    const-string v7, "ZTEPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gengbin, touchPoint.y "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v7, "ZTEPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gengbin,windowHeigh = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v7, 0x0

    iget v8, v3, Landroid/graphics/Point;->x:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v7, v8, v9}, Lcom/zte/mifavor/widget/ZTEPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 78
    :cond_3
    return-void
.end method
