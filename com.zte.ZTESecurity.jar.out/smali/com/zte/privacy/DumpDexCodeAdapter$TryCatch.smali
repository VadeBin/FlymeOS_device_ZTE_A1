.class Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;
.super Ljava/lang/Object;
.source "DumpDexCodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/privacy/DumpDexCodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TryCatch"
.end annotation


# instance fields
.field public end:Lcom/zte/privacy/DexLabel;

.field public handlers:[Lcom/zte/privacy/DexLabel;

.field public start:Lcom/zte/privacy/DexLabel;

.field public types:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zte/privacy/DexLabel;Lcom/zte/privacy/DexLabel;[Lcom/zte/privacy/DexLabel;[Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Lcom/zte/privacy/DexLabel;
    .param p2, "end"    # Lcom/zte/privacy/DexLabel;
    .param p3, "handlers"    # [Lcom/zte/privacy/DexLabel;
    .param p4, "types"    # [Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;->start:Lcom/zte/privacy/DexLabel;

    .line 42
    iput-object p2, p0, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;->end:Lcom/zte/privacy/DexLabel;

    .line 43
    iput-object p3, p0, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;->handlers:[Lcom/zte/privacy/DexLabel;

    .line 44
    iput-object p4, p0, Lcom/zte/privacy/DumpDexCodeAdapter$TryCatch;->types:[Ljava/lang/String;

    .line 45
    return-void
.end method
