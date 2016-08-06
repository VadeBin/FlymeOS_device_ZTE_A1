.class Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;
.super Ljava/lang/Object;
.source "ShareDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/ShareDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemInfo"
.end annotation


# instance fields
.field private checked:Z

.field private subtitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/shotcutkey/ShareDetailActivity;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/ShareDetailActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;
    .param p4, "checked"    # Z

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->this$0:Lcom/android/shotcutkey/ShareDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p2, p0, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->title:Ljava/lang/String;

    .line 428
    iput-object p3, p0, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->subtitle:Ljava/lang/String;

    .line 429
    iput-boolean p4, p0, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->checked:Z

    .line 430
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->checked:Z

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "c"    # Z

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/android/shotcutkey/ShareDetailActivity$ListItemInfo;->checked:Z

    .line 446
    return-void
.end method
