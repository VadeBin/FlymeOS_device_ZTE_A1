.class Lcom/android/shotcutkey/MainActivity$4$1;
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
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity$4$1;->this$1:Lcom/android/shotcutkey/MainActivity$4;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v4, 0x3

    .line 359
    .line 360
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 361
    .local v1, "childPosition":I
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$4$1;->this$1:Lcom/android/shotcutkey/MainActivity$4;

    # getter for: Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/MainActivity$4;->access$0(Lcom/android/shotcutkey/MainActivity$4;)Lcom/android/shotcutkey/MainActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/MainActivity;->mGroupData:Ljava/util/List;
    invoke-static {v2}, Lcom/android/shotcutkey/MainActivity;->access$13(Lcom/android/shotcutkey/MainActivity;)Ljava/util/List;

    move-result-object v2

    .line 362
    iget-object v3, p0, Lcom/android/shotcutkey/MainActivity$4$1;->this$1:Lcom/android/shotcutkey/MainActivity$4;

    # getter for: Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;
    invoke-static {v3}, Lcom/android/shotcutkey/MainActivity$4;->access$0(Lcom/android/shotcutkey/MainActivity$4;)Lcom/android/shotcutkey/MainActivity;

    move-result-object v3

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v3}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;

    .line 363
    invoke-virtual {v2}, Lcom/android/shotcutkey/ShotcutKeyDB$groupData;->getChildData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/shotcutkey/ShotcutKeyDB$childData;

    .line 364
    .local v0, "cd":Lcom/android/shotcutkey/ShotcutKeyDB$childData;
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$4$1;->this$1:Lcom/android/shotcutkey/MainActivity$4;

    # getter for: Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/MainActivity$4;->access$0(Lcom/android/shotcutkey/MainActivity$4;)Lcom/android/shotcutkey/MainActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v2}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v2

    .line 365
    iget-object v3, p0, Lcom/android/shotcutkey/MainActivity$4$1;->this$1:Lcom/android/shotcutkey/MainActivity$4;

    # getter for: Lcom/android/shotcutkey/MainActivity$4;->this$0:Lcom/android/shotcutkey/MainActivity;
    invoke-static {v3}, Lcom/android/shotcutkey/MainActivity$4;->access$0(Lcom/android/shotcutkey/MainActivity$4;)Lcom/android/shotcutkey/MainActivity;

    move-result-object v3

    # getter for: Lcom/android/shotcutkey/MainActivity;->mShotcutDB:Lcom/android/shotcutkey/ShotcutKeyDB;
    invoke-static {v3}, Lcom/android/shotcutkey/MainActivity;->access$9(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/ShotcutKeyDB;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    invoke-virtual {v2, v4, v1, p2}, Lcom/android/shotcutkey/ShotcutKeyDB;->saveStateByGroupIdAndChildId(IIZ)Z

    .line 367
    invoke-virtual {v0, p2}, Lcom/android/shotcutkey/ShotcutKeyDB$childData;->setEnabled(Z)V

    .line 368
    return-void
.end method
