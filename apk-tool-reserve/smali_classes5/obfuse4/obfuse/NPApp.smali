.class public final Lobfuse4/obfuse/NPApp;
.super Landroid/app/Application;
.source "01AA.java"


# static fields
.field public static np:[B

.field public static np2:Ljava/lang/String;

.field public static np3:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lobfuse4/obfuse/NPApp;->np:[B

    const-string v0, "0OO0010101010100OOO1"

    sput-object v0, Lobfuse4/obfuse/NPApp;->np2:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lobfuse4/obfuse/NPApp;->np3:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x6et
        0x70t
        0x6dt
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x72t
        0x13t
        0x61t
        0x78t
        0x61t
        0x67t
        0x65t
        0x72t
        0x77t
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x7bt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "plainText"    # Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "no"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private na()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lobfuse4/obfuse/NPApp;->np:[B

    return-void

    :array_0
    .array-data 1
        0x13t
        0x61t
        0x78t
        0x61t
        0x67t
        0x65t
        0x72t
        0x77t
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x7bt
    .end array-data
.end method

.method private nb()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lobfuse4/obfuse/NPApp;->np:[B

    return-void

    :array_0
    .array-data 1
        0x9t
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x72t
        0x6dt
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x72t
    .end array-data
.end method

.method private nc()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lobfuse4/obfuse/NPApp;->np:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x72t
        0x6dt
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x70t
    .end array-data
.end method

.method private nd()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lobfuse4/obfuse/NPApp;->np:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x72t
        0x6dt
        0x61t
        0xat
        0x61t
        0x67t
        0x65t
        0x71t
    .end array-data
.end method

.method private nf()V
    .locals 1

    invoke-virtual {p0}, Lobfuse4/obfuse/NPApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lobfuse4/obfuse/NPApp;->np2:Ljava/lang/String;

    return-void
.end method

.method private ng()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lobfuse4/obfuse/NPApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "Lm5wYXBw"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 1
    .local v0, "01AA.java:1":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 2
    .local v0, "01AA.java:2":V
    invoke-static {v3}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    sput-object v3, Lobfuse4/obfuse/NPApp;->np3:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private nm()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lobfuse4/obfuse/NPApp;->np:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x61t
        0x6et
        0x61t
        0x67t
        0x65t
        0x72t
        0x6dt
        0x61t
        0xat
        0x61t
        0x67t
        0x65t
        0x71t
        0x72t
        0x6dt
        0x61t
        0xat
        0x61t
        0x67t
        0x65t
        0x71t
    .end array-data
.end method

.method private np()V
    .locals 1

    nop

    const/16 v0, 0x0

    nop

    new-array v0, v0, [B

    sput-object v0, Lobfuse4/obfuse/NPApp;->np:[B

    return-void
.end method

.method private static nq(Ljava/io/File;Ljava/util/List;)V
    .locals 3
    .param p0, "var0"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Lobfuse4/obfuse/NPApp;->nq(Ljava/io/File;Ljava/util/List;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public static nz()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lobfuse4/obfuse/NPApp;->np:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 3
    .local v0, "01AA.java:3":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lobfuse4/obfuse/NPApp;->np2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lobfuse4/obfuse/NPApp;->np3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lobfuse4/obfuse/NPApp;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    .local v0, "01AA.java:4":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method private u(Landroid/content/Context;)Ljava/lang/String;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "YW5kcm9pZC5jb250ZW50LkNvbnRleHQ="

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 5
    .local v0, "01AA.java:5":V
    invoke-static {v2}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v2}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v5, "Z2V0UGFja2FnZU1hbmFnZXI="

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 6
    .local v0, "01AA.java:6":V
    invoke-static {v3}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const-string v8, "YW5kcm9pZC5jb250ZW50LnBtLlBhY2thZ2VNYW5hZ2Vy"

    invoke-static {v8, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 7
    .local v0, "01AA.java:7":V
    invoke-static {v7}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v7}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, "Z2V0UGFja2FnZUluZm8="

    invoke-static {v9, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 8
    .local v0, "01AA.java:8":V
    invoke-static {v8}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v8}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    const-string v10, "Z2V0UGFja2FnZU5hbWU="

    invoke-static {v10, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 9
    .local v0, "01AA.java:9":V
    invoke-static {v9}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v9}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    new-array v10, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v9, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v10, v12, v5

    const/16 v13, 0x40

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v11

    invoke-virtual {v8, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    const-string v13, "YW5kcm9pZC5jb250ZW50LnBtLlBhY2thZ2VJbmZv"

    invoke-static {v13, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 10
    .local v0, "01AA.java:10":V
    invoke-static {v12}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v12}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    new-instance v13, Ljava/lang/String;

    const-string v14, "c2lnbmF0dXJlcw=="

    invoke-static {v14, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([B)V

    .line 11
    .local v0, "01AA.java:11":V
    invoke-static {v13}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v13}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/Object;

    check-cast v14, [Ljava/lang/Object;

    aget-object v15, v14, v5

    new-instance v5, Ljava/lang/String;

    const-string v4, "YW5kcm9pZC5jb250ZW50LnBtLlNpZ25hdHVyZQ=="

    const/4 v1, 0x2

    invoke-static {v4, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 12
    .local v0, "01AA.java:12":V
    invoke-static {v5}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    const-string v5, "dG9DaGFyc1N0cmluZw=="

    move-object/from16 v16, v2

    const/4 v2, 0x2

    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 13
    .local v0, "01AA.java:13":V
    invoke-static {v4}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v15, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lobfuse4/obfuse/NPApp;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .local v0, "01AA.java:14":V
    invoke-static {v5}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    :try_start_1
    invoke-static {v5}, Lobfuse4/obfuse/NPApp;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    .local v0, "01AA.java:15":V
    invoke-static {v5}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    :try_start_2
    move-object/from16 v17, v1

    const-string v1, "9c4e0a8516028eca64f51423259ed363"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lobfuse4/obfuse/NPApp;->nc()V

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v22, v6

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lobfuse4/obfuse/NPApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/String;

    move-object/from16 v18, v3

    const-string v3, "YmluLm10"

    move-object/from16 v19, v4

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 16
    .local v0, "01AA.java:16":V
    invoke-static {v5}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/String;

    const-string v3, "b2JmdXNlNC5vYmZ1c2UuTlBBcHA="

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 17
    .local v0, "01AA.java:17":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 18
    .local v0, "01AA.java:18":V
    invoke-static {v3}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    :try_start_3
    const-string v4, "fi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lobfuse4/obfuse/NPApp;->nb()V

    move-object/from16 v22, v6

    goto/16 :goto_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 19
    .local v0, "01AA.java:19":V
    invoke-static {v4}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    :try_start_4
    const-string v5, "fi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    move-object/from16 v20, v1

    new-instance v1, Ljava/lang/String;

    move-object/from16 v21, v3

    const-string v3, "ZGVjb2Rl"

    move-object/from16 v22, v6

    const/4 v6, 0x2

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 20
    .local v0, "01AA.java:20":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v3}, Lobfuse4/obfuse/NPApp;->nq(Ljava/io/File;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct/range {p0 .. p0}, Lobfuse4/obfuse/NPApp;->nm()V

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Lobfuse4/obfuse/NPApp;->np()V

    goto :goto_0

    :cond_3
    invoke-direct/range {p0 .. p0}, Lobfuse4/obfuse/NPApp;->nc()V

    :goto_0
    goto :goto_1

    :cond_4
    invoke-direct/range {p0 .. p0}, Lobfuse4/obfuse/NPApp;->nc()V

    :goto_1
    goto :goto_2

    :cond_5
    move-object/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    invoke-direct/range {p0 .. p0}, Lobfuse4/obfuse/NPApp;->nd()V

    :goto_2
    goto :goto_3

    :cond_6
    move-object/from16 v22, v6

    invoke-direct/range {p0 .. p0}, Lobfuse4/obfuse/NPApp;->na()V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_4
    nop

    :goto_5
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-direct {p0, p0}, Lobfuse4/obfuse/NPApp;->u(Landroid/content/Context;)Ljava/lang/String;

    invoke-direct {p0}, Lobfuse4/obfuse/NPApp;->nf()V

    invoke-direct {p0}, Lobfuse4/obfuse/NPApp;->ng()V

    return-void
.end method
