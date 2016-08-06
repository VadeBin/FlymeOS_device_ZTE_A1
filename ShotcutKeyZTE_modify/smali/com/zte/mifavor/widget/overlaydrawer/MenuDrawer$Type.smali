.class public final enum Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;
.super Ljava/lang/Enum;
.source "MenuDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

.field public static final enum BEHIND:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

.field public static final enum OVERLAY:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

.field public static final enum STATIC:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    const-string v1, "BEHIND"

    invoke-direct {v0, v1, v2}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->BEHIND:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    .line 90
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v3}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->STATIC:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    .line 95
    new-instance v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    const-string v1, "OVERLAY"

    invoke-direct {v0, v1, v4}, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->OVERLAY:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    sget-object v1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->BEHIND:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->STATIC:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->OVERLAY:Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->$VALUES:[Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const-class v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    return-object v0
.end method

.method public static values()[Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->$VALUES:[Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    invoke-virtual {v0}, [Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/mifavor/widget/overlaydrawer/MenuDrawer$Type;

    return-object v0
.end method
