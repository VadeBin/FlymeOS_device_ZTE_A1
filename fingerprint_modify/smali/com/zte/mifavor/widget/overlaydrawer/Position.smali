.class public final enum Lcom/zte/mifavor/widget/overlaydrawer/Position;
.super Ljava/lang/Enum;
.source "Position.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/mifavor/widget/overlaydrawer/Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/mifavor/widget/overlaydrawer/Position;

.field public static final enum BOTTOM:Lcom/zte/mifavor/widget/overlaydrawer/Position;

.field public static final enum LEFT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

.field public static final enum RIGHT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

.field private static final STRING_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/zte/mifavor/widget/overlaydrawer/Position;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TOP:Lcom/zte/mifavor/widget/overlaydrawer/Position;


# instance fields
.field final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10
    new-instance v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;

    const-string v5, "LEFT"

    invoke-direct {v4, v5, v6, v6}, Lcom/zte/mifavor/widget/overlaydrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;->LEFT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 13
    new-instance v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;

    const-string v5, "TOP"

    invoke-direct {v4, v5, v7, v7}, Lcom/zte/mifavor/widget/overlaydrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;->TOP:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 16
    new-instance v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;

    const-string v5, "RIGHT"

    invoke-direct {v4, v5, v8, v8}, Lcom/zte/mifavor/widget/overlaydrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;->RIGHT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 19
    new-instance v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;

    const-string v5, "BOTTOM"

    invoke-direct {v4, v5, v9, v9}, Lcom/zte/mifavor/widget/overlaydrawer/Position;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;->BOTTOM:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 8
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/zte/mifavor/widget/overlaydrawer/Position;

    sget-object v5, Lcom/zte/mifavor/widget/overlaydrawer/Position;->LEFT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    aput-object v5, v4, v6

    sget-object v5, Lcom/zte/mifavor/widget/overlaydrawer/Position;->TOP:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    aput-object v5, v4, v7

    sget-object v5, Lcom/zte/mifavor/widget/overlaydrawer/Position;->RIGHT:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    aput-object v5, v4, v8

    sget-object v5, Lcom/zte/mifavor/widget/overlaydrawer/Position;->BOTTOM:Lcom/zte/mifavor/widget/overlaydrawer/Position;

    aput-object v5, v4, v9

    sput-object v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;->$VALUES:[Lcom/zte/mifavor/widget/overlaydrawer/Position;

    .line 27
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;->STRING_MAPPING:Landroid/util/SparseArray;

    .line 30
    invoke-static {}, Lcom/zte/mifavor/widget/overlaydrawer/Position;->values()[Lcom/zte/mifavor/widget/overlaydrawer/Position;

    move-result-object v0

    .local v0, "arr$":[Lcom/zte/mifavor/widget/overlaydrawer/Position;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 31
    .local v3, "via":Lcom/zte/mifavor/widget/overlaydrawer/Position;
    sget-object v4, Lcom/zte/mifavor/widget/overlaydrawer/Position;->STRING_MAPPING:Landroid/util/SparseArray;

    iget v5, v3, Lcom/zte/mifavor/widget/overlaydrawer/Position;->mValue:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    .end local v3    # "via":Lcom/zte/mifavor/widget/overlaydrawer/Position;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/zte/mifavor/widget/overlaydrawer/Position;->mValue:I

    .line 25
    return-void
.end method

.method public static fromValue(I)Lcom/zte/mifavor/widget/overlaydrawer/Position;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 36
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/Position;->STRING_MAPPING:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/Position;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/mifavor/widget/overlaydrawer/Position;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/Position;

    return-object v0
.end method

.method public static values()[Lcom/zte/mifavor/widget/overlaydrawer/Position;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/Position;->$VALUES:[Lcom/zte/mifavor/widget/overlaydrawer/Position;

    invoke-virtual {v0}, [Lcom/zte/mifavor/widget/overlaydrawer/Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/mifavor/widget/overlaydrawer/Position;

    return-object v0
.end method
