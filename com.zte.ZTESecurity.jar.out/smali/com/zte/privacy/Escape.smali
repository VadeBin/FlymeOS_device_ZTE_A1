.class public Lcom/zte/privacy/Escape;
.super Ljava/lang/Object;
.source "Escape.java"

# interfaces
.implements Lcom/zte/privacy/DexOpcodes;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static classAcc(I)Ljava/lang/String;
    .locals 2
    .param p0, "acc"    # I

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const-string v1, "0"

    .line 71
    :goto_0
    return-object v1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const-string v1, "ACC_PUBLIC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_1
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    const-string v1, "ACC_PRIVATE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_2
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    const-string v1, "ACC_PROTECTED|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_3
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    const-string v1, "ACC_STATIC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_4
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    const-string v1, "ACC_FINAL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_5
    const/16 v1, 0x200

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 54
    const-string v1, "ACC_INTERFACE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_6
    const/16 v1, 0x400

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 57
    const-string v1, "ACC_ABSTRACT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_7
    const/16 v1, 0x1000

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 60
    const-string v1, "ACC_SYNTHETIC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_8
    const/16 v1, 0x2000

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 63
    const-string v1, "ACC_ANNOTATION|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_9
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 66
    const-string v1, "ACC_ENUM|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 71
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method static contain(II)Z
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 30
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fieldAcc(I)Ljava/lang/String;
    .locals 2
    .param p0, "acc"    # I

    .prologue
    .line 122
    if-nez p0, :cond_0

    .line 123
    const-string v1, "0"

    .line 157
    :goto_0
    return-object v1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    const-string v1, "ACC_PUBLIC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    const-string v1, "ACC_PRIVATE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_2
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    const-string v1, "ACC_PROTECTED|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_3
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 136
    const-string v1, "ACC_STATIC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_4
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    const-string v1, "ACC_FINAL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_5
    const/16 v1, 0x40

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 142
    const-string v1, "ACC_VOLATILE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_6
    const/16 v1, 0x80

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 145
    const-string v1, "ACC_TRANSIENT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_7
    const/16 v1, 0x1000

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 149
    const-string v1, "ACC_SYNTHETIC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_8
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 152
    const-string v1, "ACC_ENUM|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 157
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static methodAcc(I)Ljava/lang/String;
    .locals 2
    .param p0, "acc"    # I

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const-string v1, "0"

    .line 118
    :goto_0
    return-object v1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "ACC_PUBLIC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_1
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const-string v1, "ACC_PRIVATE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_2
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    const-string v1, "ACC_PROTECTED|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_3
    const/16 v1, 0x8

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    const-string v1, "ACC_STATIC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_4
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    const-string v1, "ACC_FINAL|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_5
    const/16 v1, 0x40

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    const-string v1, "ACC_BRIDGE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_6
    const/16 v1, 0x80

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 98
    const-string v1, "ACC_VARARGS|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_7
    const/16 v1, 0x100

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 101
    const-string v1, "ACC_NATIVE|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_8
    const/16 v1, 0x400

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 104
    const-string v1, "ACC_ABSTRACT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_9
    const/16 v1, 0x800

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 107
    const-string v1, "ACC_STRICT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_a
    const/16 v1, 0x1000

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 110
    const-string v1, "ACC_SYNTHETIC|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_b
    const/high16 v1, 0x10000

    invoke-static {p0, v1}, Lcom/zte/privacy/Escape;->contain(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 113
    const-string v1, "ACC_CONSTRUCTOR|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 118
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static v(Lcom/zte/privacy/DexType;)Ljava/lang/String;
    .locals 2
    .param p0, "t"    # Lcom/zte/privacy/DexType;

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new DexType("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/privacy/DexType;->desc:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v(Lcom/zte/privacy/Field;)Ljava/lang/String;
    .locals 4
    .param p0, "f"    # Lcom/zte/privacy/Field;

    .prologue
    .line 161
    const-string v0, "new Field(%s,%s,%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/privacy/Field;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/zte/privacy/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/zte/privacy/Field;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v(Lcom/zte/privacy/Method;)Ljava/lang/String;
    .locals 4
    .param p0, "m"    # Lcom/zte/privacy/Method;

    .prologue
    .line 165
    const-string v0, "new Method(%s,%s,%s,%s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/zte/privacy/Method;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/zte/privacy/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/zte/privacy/Method;->getParameterTypes()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Escape;->v([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/zte/privacy/Method;->getReturnType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 241
    if-nez p0, :cond_0

    .line 242
    const-string v0, "null"

    .line 283
    :goto_0
    return-object v0

    .line 244
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 245
    check-cast p0, Ljava/lang/String;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lcom/zte/privacy/DexType;

    if-eqz v0, :cond_2

    .line 249
    check-cast p0, Lcom/zte/privacy/DexType;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/zte/privacy/Escape;->v(Lcom/zte/privacy/DexType;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, Lcom/zte/privacy/Method;

    if-eqz v0, :cond_3

    .line 253
    check-cast p0, Lcom/zte/privacy/Method;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/zte/privacy/Escape;->v(Lcom/zte/privacy/Method;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, Lcom/zte/privacy/Field;

    if-eqz v0, :cond_4

    .line 256
    check-cast p0, Lcom/zte/privacy/Field;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/zte/privacy/Escape;->v(Lcom/zte/privacy/Field;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Integer.valueOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_5
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Long.valueOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 265
    :cond_6
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Float.valueOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "F)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 268
    :cond_7
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Double.valueOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 271
    :cond_8
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Short.valueOf((short)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 274
    :cond_9
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_a

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Byte.valueOf((byte)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 277
    :cond_a
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_b

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Character.valueOf(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 280
    :cond_b
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Boolean.valueOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 283
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 171
    const-string v0, "null"

    .line 173
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/zte/privacy/Utf8Utils;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static v([B)Ljava/lang/String;
    .locals 7
    .param p0, "vs"    # [B

    .prologue
    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "new byte[]{ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 198
    .local v1, "first":Z
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-byte v4, v0, v2

    .line 199
    .local v4, "obj":B
    if-eqz v1, :cond_0

    .line 200
    const/4 v1, 0x0

    .line 204
    :goto_1
    const-string v6, "(byte)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 206
    .end local v4    # "obj":B
    :cond_1
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static v([I)Ljava/lang/String;
    .locals 7
    .param p0, "vs"    # [I

    .prologue
    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "new int[]{ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 184
    .local v1, "first":Z
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    .line 185
    .local v4, "obj":I
    if-eqz v1, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 190
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 192
    .end local v4    # "obj":I
    :cond_1
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static v([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "vs"    # [Ljava/lang/Object;

    .prologue
    .line 227
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "new Object[]{ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 229
    .local v1, "first":Z
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 230
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 231
    const/4 v1, 0x0

    .line 235
    :goto_1
    invoke-static {v4}, Lcom/zte/privacy/Escape;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 237
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_1
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static v([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "vs"    # [Ljava/lang/String;

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 211
    const-string v6, "null"

    .line 223
    :goto_0
    return-object v6

    .line 213
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "new String[]{ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 215
    .local v1, "first":Z
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 216
    .local v4, "obj":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 217
    const/4 v1, 0x0

    .line 221
    :goto_2
    invoke-static {v4}, Lcom/zte/privacy/Escape;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 219
    :cond_1
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 223
    .end local v4    # "obj":Ljava/lang/String;
    :cond_2
    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
