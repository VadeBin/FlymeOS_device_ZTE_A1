.class public Lcom/zte/mifavor/widget/overlaydrawer/Category;
.super Ljava/lang/Object;
.source "Category.java"


# instance fields
.field mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/zte/mifavor/widget/overlaydrawer/Category;->mTitle:Ljava/lang/String;

    .line 9
    return-void
.end method
