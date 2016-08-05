.class Lcom/zte/privacy/Annotation;
.super Ljava/lang/Object;
.source "Annotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/privacy/Annotation$Item;
    }
.end annotation


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/privacy/Annotation$Item;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/Annotation;->items:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/zte/privacy/Annotation;->type:Ljava/lang/String;

    .line 56
    iput-boolean p2, p0, Lcom/zte/privacy/Annotation;->visible:Z

    .line 57
    return-void
.end method
