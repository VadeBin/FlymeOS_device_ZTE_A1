.class Lcom/zte/fingerprint/manage/FPCManage$1;
.super Ljava/lang/Object;
.source "FPCManage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/manage/FPCManage;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/manage/FPCManage;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/manage/FPCManage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/manage/FPCManage;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zte/fingerprint/manage/FPCManage$1;->this$0:Lcom/zte/fingerprint/manage/FPCManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zte/fingerprint/manage/FPCManage$1;->this$0:Lcom/zte/fingerprint/manage/FPCManage;

    # getter for: Lcom/zte/fingerprint/manage/FPCManage;->fingerInfo:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/zte/fingerprint/manage/FPCManage;->access$000(Lcom/zte/fingerprint/manage/FPCManage;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
