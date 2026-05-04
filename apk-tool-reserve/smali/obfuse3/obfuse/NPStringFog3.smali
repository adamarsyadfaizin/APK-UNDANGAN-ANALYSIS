.class public Lobfuse3/obfuse/NPStringFog3;
.super Ljava/lang/Object;
.source "00B4.java"


# static fields
.field public static KEY:Ljava/lang/String; = null

.field private static final hexString:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const-string v2, "npmanager"

    sput-object v2, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(I[B)Ljava/lang/String;
    .locals 17

    .prologue
    move/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 1
    .local v0, "00B4.java:1":V
    invoke-static {v11}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v11}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v3, v10

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    :goto_0
    move v10, v5

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_0

    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    sget-object v10, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v6

    if-lt v10, v11, :cond_1

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v5

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 2
    .local v0, "00B4.java:2":V
    invoke-static {v11}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v11}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v0, v10

    return-object v0

    :cond_0
    move-object v10, v4

    sget-object v11, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v12, v3

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, 0x4

    shl-int/lit8 v11, v11, 0x4

    sget-object v12, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v13, v3

    move v14, v5

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v10, v5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v5, v10

    goto :goto_0

    :cond_1
    move-object v10, v5

    move v11, v8

    move-object v12, v5

    move v13, v8

    aget-byte v12, v12, v13

    sget-object v13, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    move v14, v8

    move v15, v7

    rem-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static d(Z[B)Ljava/lang/String;
    .locals 17

    .prologue
    move/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 3
    .local v0, "00B4.java:3":V
    invoke-static {v11}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v11}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v3, v10

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    :goto_0
    move v10, v5

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_0

    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    sget-object v10, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v6

    if-lt v10, v11, :cond_1

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v5

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 4
    .local v0, "00B4.java:4":V
    invoke-static {v11}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v11}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v0, v10

    return-object v0

    :cond_0
    move-object v10, v4

    sget-object v11, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v12, v3

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, 0x4

    shl-int/lit8 v11, v11, 0x4

    sget-object v12, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v13, v3

    move v14, v5

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v10, v5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v5, v10

    goto :goto_0

    :cond_1
    move-object v10, v5

    move v11, v8

    move-object v12, v5

    move v13, v8

    aget-byte v12, v12, v13

    sget-object v13, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    move v14, v8

    move v15, v7

    rem-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static d(Z[BZ)Ljava/lang/String;
    .locals 18

    .prologue
    move/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v11, Ljava/lang/String;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v1

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 5
    .local v0, "00B4.java:5":V
    invoke-static {v12}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v12}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v4, v11

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    invoke-direct {v12, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v5, v11

    const/4 v11, 0x0

    move v6, v11

    :goto_0
    move v11, v6

    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v11, v12, :cond_0

    move-object v11, v5

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    move-object v6, v11

    move-object v11, v6

    array-length v11, v11

    move v7, v11

    sget-object v11, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v8, v11

    const/4 v11, 0x0

    move v9, v11

    :goto_1
    move v11, v9

    move v12, v7

    if-lt v11, v12, :cond_1

    new-instance v11, Ljava/lang/String;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v6

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 6
    .local v0, "00B4.java:6":V
    invoke-static {v12}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v12}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v0, v11

    return-object v0

    :cond_0
    move-object v11, v5

    sget-object v12, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v13, v4

    move v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, 0x4

    shl-int/lit8 v12, v12, 0x4

    sget-object v13, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v14, v4

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    or-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v11, v6

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    move v6, v11

    goto :goto_0

    :cond_1
    move-object v11, v6

    move v12, v9

    move-object v13, v6

    move v14, v9

    aget-byte v13, v13, v14

    sget-object v14, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    move v15, v9

    move/from16 v16, v8

    rem-int v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public static d([B)Ljava/lang/String;
    .locals 16

    .prologue
    move-object/from16 v0, p0

    new-instance v9, Ljava/lang/String;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 7
    .local v0, "00B4.java:7":V
    invoke-static {v10}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v10}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v2, v9

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    invoke-direct {v10, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v3, v9

    const/4 v9, 0x0

    move v4, v9

    :goto_0
    move v9, v4

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v9, v10, :cond_0

    move-object v9, v3

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    array-length v9, v9

    move v5, v9

    sget-object v9, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v5

    if-lt v9, v10, :cond_1

    new-instance v9, Ljava/lang/String;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    .line 8
    .local v0, "00B4.java:8":V
    invoke-static {v10}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v10}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v0, v9

    return-object v0

    :cond_0
    move-object v9, v3

    sget-object v10, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v11, v2

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    const/4 v11, 0x4

    shl-int/lit8 v10, v10, 0x4

    sget-object v11, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v12, v2

    move v13, v4

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    or-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v9, v4

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v4, v9

    goto :goto_0

    :cond_1
    move-object v9, v4

    move v10, v7

    move-object v11, v4

    move v12, v7

    aget-byte v11, v11, v12

    sget-object v12, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    move v13, v7

    move v14, v6

    rem-int/2addr v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static d([BI)Ljava/lang/String;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 9
    .local v0, "00B4.java:9":V
    invoke-static {v11}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v11}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v3, v10

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    :goto_0
    move v10, v5

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_0

    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    sget-object v10, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v6

    if-lt v10, v11, :cond_1

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v5

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 10
    .local v0, "00B4.java:10":V
    invoke-static {v11}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v11}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v0, v10

    return-object v0

    :cond_0
    move-object v10, v4

    sget-object v11, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v12, v3

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, 0x4

    shl-int/lit8 v11, v11, 0x4

    sget-object v12, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v13, v3

    move v14, v5

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v10, v5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v5, v10

    goto :goto_0

    :cond_1
    move-object v10, v5

    move v11, v8

    move-object v12, v5

    move v13, v8

    aget-byte v12, v12, v13

    sget-object v13, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    move v14, v8

    move v15, v7

    rem-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static d([BZ)Ljava/lang/String;
    .locals 17

    .prologue
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 11
    .local v0, "00B4.java:11":V
    invoke-static {v11}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v11}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v3, v10

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    invoke-direct {v11, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    :goto_0
    move v10, v5

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_0

    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    sget-object v10, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v6

    if-lt v10, v11, :cond_1

    new-instance v10, Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v5

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    .line 12
    .local v0, "00B4.java:12":V
    invoke-static {v11}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v11}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    move-object v0, v10

    return-object v0

    :cond_0
    move-object v10, v4

    sget-object v11, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v12, v3

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, 0x4

    shl-int/lit8 v11, v11, 0x4

    sget-object v12, Lobfuse3/obfuse/NPStringFog3;->hexString:Ljava/lang/String;

    move-object v13, v3

    move v14, v5

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    or-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v10, v5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    move v5, v10

    goto :goto_0

    :cond_1
    move-object v10, v5

    move v11, v8

    move-object v12, v5

    move v13, v8

    aget-byte v12, v12, v13

    sget-object v13, Lobfuse3/obfuse/NPStringFog3;->KEY:Ljava/lang/String;

    move v14, v8

    move v15, v7

    rem-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
