.class Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;
.super Ljava/lang/Object;
.source "SelectFunctionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/shotcutkey/SelectFunctionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "appInfo"
.end annotation


# instance fields
.field image:I

.field text:I

.field final synthetic this$0:Lcom/android/shotcutkey/SelectFunctionActivity;


# direct methods
.method public constructor <init>(Lcom/android/shotcutkey/SelectFunctionActivity;II)V
    .locals 0
    .param p2, "image"    # I
    .param p3, "text"    # I

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;->this$0:Lcom/android/shotcutkey/SelectFunctionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput p2, p0, Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;->image:I

    .line 319
    iput p3, p0, Lcom/android/shotcutkey/SelectFunctionActivity$appInfo;->text:I

    .line 320
    return-void
.end method
