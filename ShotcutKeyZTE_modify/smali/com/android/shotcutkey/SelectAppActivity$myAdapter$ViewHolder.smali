.class Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectAppActivity$myAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/SelectAppActivity$myAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;->this$1:Lcom/android/shotcutkey/SelectAppActivity$myAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const v0, 0x7f06006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 255
    const v0, 0x7f06006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/shotcutkey/SelectAppActivity$myAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    .line 256
    return-void
.end method
