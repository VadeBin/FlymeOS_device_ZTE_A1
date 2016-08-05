.class Lcom/zte/fingerprint/manage/GoodixManage$1;
.super Ljava/lang/Object;
.source "GoodixManage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/manage/GoodixManage;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/manage/GoodixManage;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/manage/GoodixManage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/manage/GoodixManage;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zte/fingerprint/manage/GoodixManage$1;->this$0:Lcom/zte/fingerprint/manage/GoodixManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/fingerprint/manage/GoodixManage$1;->this$0:Lcom/zte/fingerprint/manage/GoodixManage;

    # getter for: Lcom/zte/fingerprint/manage/GoodixManage;->fingerInfo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/fingerprint/manage/GoodixManage;->access$000(Lcom/zte/fingerprint/manage/GoodixManage;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method
