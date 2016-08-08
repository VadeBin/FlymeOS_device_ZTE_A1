.class Lcom/zte/fingerprint/enroll/GoodixEnroll$1;
.super Ljava/lang/Object;
.source "GoodixEnroll.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/fingerprint/enroll/GoodixEnroll;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/fingerprint/enroll/GoodixEnroll;


# direct methods
.method constructor <init>(Lcom/zte/fingerprint/enroll/GoodixEnroll;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zte/fingerprint/enroll/GoodixEnroll;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll$1;->this$0:Lcom/zte/fingerprint/enroll/GoodixEnroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zte/fingerprint/enroll/GoodixEnroll$1;->this$0:Lcom/zte/fingerprint/enroll/GoodixEnroll;

    invoke-virtual {v0}, Lcom/zte/fingerprint/enroll/GoodixEnroll;->finish()V

    .line 156
    return-void
.end method
