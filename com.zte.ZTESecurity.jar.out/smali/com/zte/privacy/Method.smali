.class public Lcom/zte/privacy/Method;
.super Ljava/lang/Object;
.source "Method.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private parameterTypes:[Ljava/lang/String;

.field private returnType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "parameterTypes"    # [Ljava/lang/String;
    .param p4, "returnType"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/zte/privacy/Method;->owner:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/zte/privacy/Method;->name:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/zte/privacy/Method;->parameterTypes:[Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/zte/privacy/Method;->returnType:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    if-ne p0, p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v1

    .line 111
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 112
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 115
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/zte/privacy/Method;

    .line 118
    .local v0, "other":Lcom/zte/privacy/Method;
    iget-object v3, p0, Lcom/zte/privacy/Method;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 119
    iget-object v3, v0, Lcom/zte/privacy/Method;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 120
    goto :goto_0

    .line 122
    :cond_4
    iget-object v3, p0, Lcom/zte/privacy/Method;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/privacy/Method;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_5
    iget-object v3, p0, Lcom/zte/privacy/Method;->owner:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 126
    iget-object v3, v0, Lcom/zte/privacy/Method;->owner:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 127
    goto :goto_0

    .line 129
    :cond_6
    iget-object v3, p0, Lcom/zte/privacy/Method;->owner:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/privacy/Method;->owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 130
    goto :goto_0

    .line 132
    :cond_7
    iget-object v3, p0, Lcom/zte/privacy/Method;->parameterTypes:[Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/privacy/Method;->parameterTypes:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 133
    goto :goto_0

    .line 135
    :cond_8
    iget-object v3, p0, Lcom/zte/privacy/Method;->returnType:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 136
    iget-object v3, v0, Lcom/zte/privacy/Method;->returnType:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 137
    goto :goto_0

    .line 139
    :cond_9
    iget-object v3, p0, Lcom/zte/privacy/Method;->returnType:Ljava/lang/String;

    iget-object v4, v0, Lcom/zte/privacy/Method;->returnType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 140
    goto :goto_0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 7

    .prologue
    .line 57
    iget-object v5, p0, Lcom/zte/privacy/Method;->desc:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "ps":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/zte/privacy/Method;->parameterTypes:[Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 60
    iget-object v0, p0, Lcom/zte/privacy/Method;->parameterTypes:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 61
    .local v4, "t":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "t":Ljava/lang/String;
    :cond_0
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/privacy/Method;->returnType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/privacy/Method;->desc:Ljava/lang/String;

    .line 67
    .end local v3    # "ps":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v5, p0, Lcom/zte/privacy/Method;->desc:Ljava/lang/String;

    return-object v5
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/zte/privacy/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/privacy/Method;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/zte/privacy/Method;->parameterTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getReturnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/zte/privacy/Method;->returnType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 97
    const/16 v0, 0x1f

    .line 98
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 99
    .local v1, "result":I
    iget-object v2, p0, Lcom/zte/privacy/Method;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 100
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/zte/privacy/Method;->owner:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 101
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/zte/privacy/Method;->parameterTypes:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v4

    add-int v1, v2, v4

    .line 102
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/zte/privacy/Method;->returnType:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 103
    return v1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/zte/privacy/Method;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/zte/privacy/Method;->owner:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/zte/privacy/Method;->returnType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/zte/privacy/Method;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/privacy/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/privacy/Method;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
