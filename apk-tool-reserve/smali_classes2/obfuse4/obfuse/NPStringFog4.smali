.class public Lobfuse4/obfuse/NPStringFog4;
.super Ljava/lang/Object;
.source "016B.java"


# static fields
.field public static KEY:Ljava/lang/String; = null

.field private static final hexString:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lobfuse4/obfuse/NPStringFog4;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    const-string v4, "0123456789ABCDEF"

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    or-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {}, Lobfuse4/obfuse/NPApp;->nz()Ljava/lang/String;

    move-result-object v4

    .line 1
    .local v0, "016B.java:1":V
    invoke-static {v4}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v4}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    nop

    :goto_1
    if-ge v1, v3, :cond_1

    aget-byte v6, v2, v1

    rem-int v7, v1, v5

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 2
    .local v0, "016B.java:2":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v1
.end method
