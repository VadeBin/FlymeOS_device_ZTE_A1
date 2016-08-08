.class public Lcom/zte/ZTESecurity/LazyMap;
.super Ljava/util/AbstractMap;
.source "LazyMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private factory:Lcom/zte/ZTESecurity/Transformer;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/zte/ZTESecurity/Transformer;)V
    .locals 0
    .param p2, "factor"    # Lcom/zte/ZTESecurity/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/zte/ZTESecurity/Transformer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/zte/ZTESecurity/LazyMap;, "Lcom/zte/ZTESecurity/LazyMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/zte/ZTESecurity/LazyMap;->map:Ljava/util/Map;

    .line 16
    iput-object p2, p0, Lcom/zte/ZTESecurity/LazyMap;->factory:Lcom/zte/ZTESecurity/Transformer;

    .line 17
    return-void
.end method

.method public static decorate(Ljava/util/Map;Lcom/zte/ZTESecurity/Transformer;)Ljava/util/Map;
    .locals 1
    .param p1, "factory"    # Lcom/zte/ZTESecurity/Transformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/zte/ZTESecurity/Transformer;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lcom/zte/ZTESecurity/LazyMap;

    invoke-direct {v0, p0, p1}, Lcom/zte/ZTESecurity/LazyMap;-><init>(Ljava/util/Map;Lcom/zte/ZTESecurity/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/zte/ZTESecurity/LazyMap;, "Lcom/zte/ZTESecurity/LazyMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/zte/ZTESecurity/LazyMap;, "Lcom/zte/ZTESecurity/LazyMap<TK;TV;>;"
    iget-object v1, p0, Lcom/zte/ZTESecurity/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/zte/ZTESecurity/LazyMap;->factory:Lcom/zte/ZTESecurity/Transformer;

    invoke-interface {v1, p1}, Lcom/zte/ZTESecurity/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    .local v0, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/zte/ZTESecurity/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/zte/ZTESecurity/LazyMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
