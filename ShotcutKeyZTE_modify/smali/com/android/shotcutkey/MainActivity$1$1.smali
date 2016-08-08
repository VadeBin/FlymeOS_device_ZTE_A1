.class Lcom/android/shotcutkey/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/shotcutkey/AllAppInfo$PackageChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/shotcutkey/MainActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/shotcutkey/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/android/shotcutkey/MainActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/shotcutkey/MainActivity$1$1;->this$1:Lcom/android/shotcutkey/MainActivity$1;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged()V
    .locals 3

    .prologue
    .line 155
    # getter for: Lcom/android/shotcutkey/MainActivity;->DEBUG:Z
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    # getter for: Lcom/android/shotcutkey/MainActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/shotcutkey/MainActivity;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPackageChanged() !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/shotcutkey/MainActivity$1$1;->this$1:Lcom/android/shotcutkey/MainActivity$1;

    # getter for: Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;
    invoke-static {v0}, Lcom/android/shotcutkey/MainActivity$1;->access$0(Lcom/android/shotcutkey/MainActivity$1;)Lcom/android/shotcutkey/MainActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/shotcutkey/MainActivity$1$1;->this$1:Lcom/android/shotcutkey/MainActivity$1;

    # getter for: Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;
    invoke-static {v1}, Lcom/android/shotcutkey/MainActivity$1;->access$0(Lcom/android/shotcutkey/MainActivity$1;)Lcom/android/shotcutkey/MainActivity;

    move-result-object v1

    # getter for: Lcom/android/shotcutkey/MainActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;
    invoke-static {v1}, Lcom/android/shotcutkey/MainActivity;->access$4(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/AllAppInfo;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lcom/android/shotcutkey/MainActivity$1$1;->this$1:Lcom/android/shotcutkey/MainActivity$1;

    # getter for: Lcom/android/shotcutkey/MainActivity$1;->this$0:Lcom/android/shotcutkey/MainActivity;
    invoke-static {v2}, Lcom/android/shotcutkey/MainActivity$1;->access$0(Lcom/android/shotcutkey/MainActivity$1;)Lcom/android/shotcutkey/MainActivity;

    move-result-object v2

    # getter for: Lcom/android/shotcutkey/MainActivity;->mAllAppInfo:Lcom/android/shotcutkey/AllAppInfo;
    invoke-static {v2}, Lcom/android/shotcutkey/MainActivity;->access$4(Lcom/android/shotcutkey/MainActivity;)Lcom/android/shotcutkey/AllAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/shotcutkey/AllAppInfo;->getAllAppList(I)Ljava/util/List;

    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Lcom/android/shotcutkey/MainActivity;->access$5(Lcom/android/shotcutkey/MainActivity;Ljava/util/List;)V

    .line 160
    return-void
.end method
