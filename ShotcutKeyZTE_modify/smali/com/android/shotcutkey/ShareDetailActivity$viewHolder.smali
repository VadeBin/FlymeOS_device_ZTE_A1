.class Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;
.super Ljava/lang/Object;
.source "ShareDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShareDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "viewHolder"
.end annotation


# instance fields
.field divider:Landroid/view/View;

.field radio:Lcom/zte/mifavor/widget/RadioButtonZTE;

.field subTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/shotcutkey/ShareDetailActivity;

.field title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/ShareDetailActivity;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    const v0, 0x7f06003c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->title:Landroid/widget/TextView;

    .line 457
    const v0, 0x7f06005e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->subTitle:Landroid/widget/TextView;

    .line 458
    const v0, 0x7f06000e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->divider:Landroid/view/View;

    .line 459
    const v0, 0x7f060078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RadioButtonZTE;

    iput-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$viewHolder;->radio:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 460
    return-void
.end method
