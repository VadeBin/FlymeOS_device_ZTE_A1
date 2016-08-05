.class public Lcom/zte/mifavor/widget/overlaydrawer/Item;
.super Ljava/lang/Object;
.source "Item.java"


# instance fields
.field mIconRes:I

.field mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconRes"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/Item;->mTitle:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/zte/mifavor/widget/overlaydrawer/Item;->mIconRes:I

    .line 11
    return-void
.end method
