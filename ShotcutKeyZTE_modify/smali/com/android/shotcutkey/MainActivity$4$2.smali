.class Lcom/android/shotcutkey/MainActivity$4$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/MainActivity$4;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/shotcutkey/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/MainActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity$4$2;->this$1:Lcom/android/shotcutkey/MainActivity$4;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 449
    .line 450
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 449
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 451
    .local v0, "groupPosition":I
    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity$4$2;->this$1:Lcom/android/shotcutkey/MainActivity$4;

    # getter for: Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/MainActivity$4;->access$0(Lcom/android/shotcutkey/MainActivity$4;)Lcom/android/shotcutkey/MainActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v1}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v1

    .line 452
    const/4 v2, -0x1

    .line 451
    invoke-virtual {v1, v0, v2, p2}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveStateByGroupIdAndChildId(IIZ)Z

    .line 453
    return-void
.end method
