.class abstract Lcom/zte/mifavor/preference/GenericInflater;
.super Ljava/lang/Object;
.source "GenericInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;,
        Lcom/zte/mifavor/preference/GenericInflater$Factory;,
        Lcom/zte/mifavor/preference/GenericInflater$Parent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P::",
        "Lcom/zte/mifavor/preference/GenericInflater$Parent;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final mConstructorSignature:[Ljava/lang/Class;

.field private static final sConstructorMap:Ljava/util/HashMap;


# instance fields
.field private final DEBUG:Z

.field private final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mDefaultPackage:Ljava/lang/String;

.field private mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zte/mifavor/preference/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFactorySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/mifavor/preference/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/mifavor/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->DEBUG:Z

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/zte/mifavor/preference/GenericInflater;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method

.method protected constructor <init>(Lcom/zte/mifavor/preference/GenericInflater;Landroid/content/Context;)V
    .locals 1
    .param p2, "newContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/preference/GenericInflater",
            "<TT;TP;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    .local p1, "original":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->DEBUG:Z

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 122
    iput-object p2, p0, Lcom/zte/mifavor/preference/GenericInflater;->mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p1, Lcom/zte/mifavor/preference/GenericInflater;->mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    iput-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    .line 124
    return-void
.end method

.method private final createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    const/4 v2, 0x0

    .line 430
    :try_start_0
    iget-object v3, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    if-nez v3, :cond_1

    .line 432
    .local v2, "item":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v2, :cond_0

    .line 433
    const/4 v3, -0x1

    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 434
    invoke-virtual {p0, p2, p3}, Lcom/zte/mifavor/preference/GenericInflater;->onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v2

    .line 441
    :cond_0
    :goto_1
    return-object v2

    .line 430
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    iget-object v4, p0, Lcom/zte/mifavor/preference/GenericInflater;->mContext:Landroid/content/Context;

    invoke-interface {v3, p2, v4, p3}, Lcom/zte/mifavor/preference/GenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 436
    .restart local v2    # "item":Ljava/lang/Object;, "TT;"
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, p3}, Lcom/zte/mifavor/preference/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_1

    .line 443
    .end local v2    # "item":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/view/InflateException;
    throw v0

    .line 446
    .end local v0    # "e":Landroid/view/InflateException;
    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 451
    throw v1

    .line 453
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Error inflating class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 457
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 458
    throw v1
.end method

.method private rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 472
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_3

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 474
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 478
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/mifavor/preference/GenericInflater;->onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 485
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "name":Ljava/lang/String;
    const-string v4, "PreferenceScreen"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 488
    const-string v2, "com.zte.mifavor.preference.PreferenceScreen"

    .line 491
    :cond_2
    invoke-direct {p0, p1, v2, p3}, Lcom/zte/mifavor/preference/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "item":Ljava/lang/Object;, "TT;"
    move-object v4, p2

    .line 498
    check-cast v4, Lcom/zte/mifavor/preference/GenericInflater$Parent;

    invoke-interface {v4, v1}, Lcom/zte/mifavor/preference/GenericInflater$Parent;->addItemFromInflater(Ljava/lang/Object;)V

    .line 503
    invoke-direct {p0, p1, v1, p3}, Lcom/zte/mifavor/preference/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 509
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Lcom/zte/mifavor/preference/GenericInflater;
.end method

.method public final createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 375
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    sget-object v5, Lcom/zte/mifavor/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 378
    .local v2, "constructor":Ljava/lang/reflect/Constructor;
    if-nez v2, :cond_0

    .line 381
    :try_start_0
    iget-object v5, p0, Lcom/zte/mifavor/preference/GenericInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    if-eqz p2, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 383
    .local v1, "clazz":Ljava/lang/Class;
    sget-object v5, Lcom/zte/mifavor/preference/GenericInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 384
    sget-object v5, Lcom/zte/mifavor/preference/GenericInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 388
    .local v0, "args":[Ljava/lang/Object;
    const/4 v5, 0x1

    aput-object p3, v0, v5

    .line 389
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    return-object v5

    .end local v0    # "args":[Ljava/lang/Object;
    :cond_1
    move-object v5, p1

    .line 381
    goto :goto_0

    .line 391
    :catch_0
    move-exception v3

    .line 392
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 396
    .local v4, "ie":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 397
    throw v4

    .line 399
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .end local v4    # "ie":Landroid/view/InflateException;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 401
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    throw v3

    .line 402
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 403
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Error inflating class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 407
    .restart local v4    # "ie":Landroid/view/InflateException;
    invoke-virtual {v4, v3}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 408
    throw v4
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getFactory()Lcom/zte/mifavor/preference/GenericInflater$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/zte/mifavor/preference/GenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    return-object v0
.end method

.method public inflate(ILcom/zte/mifavor/preference/GenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;)TT;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Lcom/zte/mifavor/preference/GenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/GenericInflater;->inflate(ILcom/zte/mifavor/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(ILcom/zte/mifavor/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "resource"    # I
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITP;Z)TT;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Lcom/zte/mifavor/preference/GenericInflater$Parent;, "TP;"
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/GenericInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 264
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/zte/mifavor/preference/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/mifavor/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 266
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/mifavor/preference/GenericInflater$Parent;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;)TT;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Lcom/zte/mifavor/preference/GenericInflater$Parent;, "TP;"
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/GenericInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/mifavor/preference/GenericInflater$Parent;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Lcom/zte/mifavor/preference/GenericInflater$Parent;Z)Ljava/lang/Object;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TP;Z)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    .local p2, "root":Lcom/zte/mifavor/preference/GenericInflater$Parent;, "TP;"
    const/4 v11, 0x2

    .line 293
    iget-object v8, p0, Lcom/zte/mifavor/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v8

    .line 294
    :try_start_0
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 295
    .local v0, "attrs":Landroid/util/AttributeSet;
    iget-object v7, p0, Lcom/zte/mifavor/preference/GenericInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/zte/mifavor/preference/GenericInflater;->mContext:Landroid/content/Context;

    aput-object v10, v7, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    move-object v4, p2

    .line 302
    .local v4, "result":Lcom/zte/mifavor/preference/GenericInflater$Parent;, "TT;"
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v11, :cond_1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 306
    :cond_1
    if-eq v5, v11, :cond_2

    .line 307
    new-instance v7, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": No start tag found!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    .end local v5    # "type":I
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Landroid/view/InflateException;
    :try_start_2
    throw v1

    .line 353
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "e":Landroid/view/InflateException;
    .end local v4    # "result":Lcom/zte/mifavor/preference/GenericInflater$Parent;, "TT;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 318
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "result":Lcom/zte/mifavor/preference/GenericInflater$Parent;, "TT;"
    .restart local v5    # "type":I
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "name":Ljava/lang/String;
    const-string v7, "PreferenceScreen"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 321
    const-string v3, "com.zte.mifavor.preference.PreferenceScreen"

    .line 324
    :cond_3
    invoke-direct {p0, p1, v3, v0}, Lcom/zte/mifavor/preference/GenericInflater;->createItemFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v6

    .line 326
    .local v6, "xmlRoot":Ljava/lang/Object;, "TT;"
    check-cast v6, Lcom/zte/mifavor/preference/GenericInflater$Parent;

    .end local v6    # "xmlRoot":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p2, p3, v6}, Lcom/zte/mifavor/preference/GenericInflater;->onMergeRoots(Lcom/zte/mifavor/preference/GenericInflater$Parent;ZLcom/zte/mifavor/preference/GenericInflater$Parent;)Lcom/zte/mifavor/preference/GenericInflater$Parent;

    move-result-object v4

    .line 332
    invoke-direct {p0, p1, v4, v0}, Lcom/zte/mifavor/preference/GenericInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Landroid/view/InflateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 352
    :try_start_4
    monitor-exit v8

    return-object v4

    .line 340
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "type":I
    :catch_1
    move-exception v1

    .line 341
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 342
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 343
    throw v2

    .line 344
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ex":Landroid/view/InflateException;
    :catch_2
    move-exception v1

    .line 345
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 348
    .restart local v2    # "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 349
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected onCreateCustomFromTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Landroid/util/AttributeSet;)Z
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "TT;",
            "Landroid/util/AttributeSet;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    .local p2, "parent":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    iget-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/zte/mifavor/preference/GenericInflater;->createItem(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onMergeRoots(Lcom/zte/mifavor/preference/GenericInflater$Parent;ZLcom/zte/mifavor/preference/GenericInflater$Parent;)Lcom/zte/mifavor/preference/GenericInflater$Parent;
    .locals 0
    .param p2, "attachToGivenRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;ZTP;)TP;"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    .local p1, "givenRoot":Lcom/zte/mifavor/preference/GenericInflater$Parent;, "TP;"
    .local p3, "xmlRoot":Lcom/zte/mifavor/preference/GenericInflater$Parent;, "TP;"
    return-object p3
.end method

.method public setDefaultPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultPackage"    # Ljava/lang/String;

    .prologue
    .line 148
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    iput-object p1, p0, Lcom/zte/mifavor/preference/GenericInflater;->mDefaultPackage:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setFactory(Lcom/zte/mifavor/preference/GenericInflater$Factory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zte/mifavor/preference/GenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Lcom/zte/mifavor/preference/GenericInflater;, "Lcom/zte/mifavor/preference/GenericInflater<TT;TP;>;"
    .local p1, "factory":Lcom/zte/mifavor/preference/GenericInflater$Factory;, "Lcom/zte/mifavor/preference/GenericInflater$Factory<TT;>;"
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactorySet:Z

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this inflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    if-nez p1, :cond_1

    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactorySet:Z

    .line 201
    iget-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    if-nez v0, :cond_2

    .line 202
    iput-object p1, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_2
    new-instance v0, Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;

    iget-object v1, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    invoke-direct {v0, p1, v1}, Lcom/zte/mifavor/preference/GenericInflater$FactoryMerger;-><init>(Lcom/zte/mifavor/preference/GenericInflater$Factory;Lcom/zte/mifavor/preference/GenericInflater$Factory;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/GenericInflater;->mFactory:Lcom/zte/mifavor/preference/GenericInflater$Factory;

    goto :goto_0
.end method
