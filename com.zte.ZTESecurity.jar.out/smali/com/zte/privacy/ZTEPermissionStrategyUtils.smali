.class Lcom/zte/privacy/ZTEPermissionStrategyUtils;
.super Ljava/lang/Object;
.source "ZTEPermissionStrategyUtils.java"


# static fields
.field private static final APPROVED_LEVEL:I = 0x1

.field private static final SYS_CONTROL_PERMISSION_FILE:Ljava/lang/String; = "syscontrolpems.xml"

.field private static final TAG:Ljava/lang/String; = "ZTEPermissionStrategyUtils"

.field private static final TAG_MANUFATURER_APPROVED:Ljava/lang/String; = "ManufaturerApproved"

.field private static final TAG_UN_APPROVED:Ljava/lang/String; = "unApproved"

.field private static final UN_APPROVED_LEVEL:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMApprovedControlPems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUApprovedControlPems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->mUApprovedControlPems:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->mMApprovedControlPems:Ljava/util/ArrayList;

    .line 175
    iput-object p1, p0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p0}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->readSysControlPermissons()V

    .line 177
    return-void
.end method

.method private getPackageTrustLevel(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    const/4 v0, 0x0

    .line 147
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    if-nez v0, :cond_1

    .line 158
    :cond_0
    :goto_1
    return v1

    .line 155
    :cond_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    move v1, v2

    .line 158
    goto :goto_1

    .line 148
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private parseByTrustLevel(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "trustLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 52
    const/4 v4, 0x0

    .line 54
    .local v4, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p2, :cond_3

    .line 55
    iget-object v4, p0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->mUApprovedControlPems:Ljava/util/ArrayList;

    .line 64
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 67
    .local v1, "outerDepth":I
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    if-eq v5, v9, :cond_2

    if-ne v5, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_2

    .line 70
    :cond_1
    if-eq v5, v10, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "tagName":Ljava/lang/String;
    const-string v6, "ZTEPermissionStrategyUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tagName is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v6, "permission"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "permission":Ljava/lang/String;
    const-string v6, "ZTEPermissionStrategyUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "permission is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 83
    .end local v1    # "outerDepth":I
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "type":I
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "ZTEPermissionStrategyUtils"

    const-string v7, "Error readTrustLevelConPems"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_2
    return-void

    .line 56
    :cond_3
    if-ne p2, v9, :cond_4

    .line 57
    iget-object v4, p0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->mMApprovedControlPems:Ljava/util/ArrayList;

    goto :goto_0

    .line 59
    :cond_4
    const-string v6, "ZTEPermissionStrategyUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "erro trustLevel :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 85
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "ZTEPermissionStrategyUtils"

    const-string v7, "Error readTrustLevelConPems"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private readSysControlPermissonsLocked(Ljava/io/File;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x1

    .line 91
    const/4 v3, 0x0

    .line 92
    .local v3, "stream":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 95
    .local v5, "success":Z
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 96
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 97
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v2, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 101
    .local v7, "type":I
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 102
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "tag":Ljava/lang/String;
    const-string v8, "policy"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "name":Ljava/lang/String;
    const-string v8, "unApproved"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 107
    const-string v8, "ZTEPermissionStrategyUtils"

    const-string v9, "sysPolicy:UnApproved"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v8, 0x0

    invoke-direct {p0, v2, v8}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->parseByTrustLevel(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 115
    .end local v1    # "name":Ljava/lang/String;
    .end local v6    # "tag":Ljava/lang/String;
    :cond_1
    :goto_0
    if-ne v7, v10, :cond_0

    .line 116
    const/4 v5, 0x1

    move-object v3, v4

    .line 129
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .end local v7    # "type":I
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 130
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 135
    :cond_2
    :goto_2
    return-void

    .line 109
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_3
    :try_start_3
    const-string v8, "ManufaturerApproved"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 110
    const-string v8, "ZTEPermissionStrategyUtils"

    const-string v9, "sysPolicy:ManufaturerApproved"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v8, 0x1

    invoke-direct {p0, v2, v8}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->parseByTrustLevel(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 117
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 118
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :goto_3
    const-string v8, "ZTEPermissionStrategyUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 119
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_4
    const-string v8, "ZTEPermissionStrategyUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 121
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 122
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v8, "ZTEPermissionStrategyUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 123
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    :goto_6
    const-string v8, "ZTEPermissionStrategyUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v8, "ZTEPermissionStrategyUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 132
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v8

    goto/16 :goto_2

    .line 125
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 123
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 121
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 119
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 117
    :catch_a
    move-exception v0

    goto/16 :goto_3
.end method

.method private sysControlPermissonsFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/io/File;

    const-string v1, "etc/security/syscontrolpems.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public permissionNeedControled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 162
    invoke-direct {p0, p1}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->getPackageTrustLevel(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "pkgTrustLevel":I
    if-nez v0, :cond_1

    .line 165
    iget-object v2, p0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->mUApprovedControlPems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    if-ne v1, v0, :cond_2

    .line 168
    iget-object v2, p0, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->mMApprovedControlPems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method readSysControlPermissons()V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->sysControlPermissonsFile()Ljava/io/File;

    move-result-object v0

    .line 139
    .local v0, "real":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-direct {p0, v0}, Lcom/zte/privacy/ZTEPermissionStrategyUtils;->readSysControlPermissonsLocked(Ljava/io/File;)V

    .line 142
    :cond_0
    return-void
.end method
