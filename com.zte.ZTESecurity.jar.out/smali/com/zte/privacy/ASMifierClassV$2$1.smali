.class Lcom/zte/privacy/ASMifierClassV$2$1;
.super Ljava/lang/Object;
.source "ASMifierClassV.java"

# interfaces
.implements Lcom/zte/privacy/DexAnnotationAble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/privacy/ASMifierClassV$2;->visitParameterAnnotation(I)Lcom/zte/privacy/DexAnnotationAble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/privacy/ASMifierClassV$2;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/zte/privacy/ASMifierClassV$2;I)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/zte/privacy/ASMifierClassV$2$1;->this$1:Lcom/zte/privacy/ASMifierClassV$2;

    iput p2, p0, Lcom/zte/privacy/ASMifierClassV$2$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Ljava/lang/String;Z)Lcom/zte/privacy/DexAnnotationVisitor;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 134
    new-instance v0, Lcom/zte/privacy/ASMifierAnnotationV;

    const-string v1, "pv%02d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/zte/privacy/ASMifierClassV$2$1;->val$index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/privacy/ASMifierClassV$2$1;->this$1:Lcom/zte/privacy/ASMifierClassV$2;

    iget-object v2, v2, Lcom/zte/privacy/ASMifierClassV$2;->val$m:Lcom/zte/privacy/ArrayOut;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/zte/privacy/ASMifierAnnotationV;-><init>(Ljava/lang/String;Lcom/zte/privacy/ArrayOut;Ljava/lang/String;Z)V

    return-object v0
.end method
