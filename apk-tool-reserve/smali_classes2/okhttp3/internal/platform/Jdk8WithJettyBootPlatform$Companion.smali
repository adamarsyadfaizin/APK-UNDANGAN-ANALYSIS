.class public final Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;
.super Ljava/lang/Object;
.source "0194.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;",
        "",
        "()V",
        "buildIfSupported",
        "Lokhttp3/internal/platform/Platform;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    invoke-direct {p0}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 17

    const-string v0, "java.specification.version"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1
    .local v0, "0194.java:1":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    nop

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "jvmVersion"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x9

    if-lt v0, v3, :cond_0

    return-object v2

    :catch_0
    move-exception v0

    :cond_0
    nop

    nop

    :try_start_1
    const-string/jumbo v0, "org.eclipse.jetty.alpn.ALPN"

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$Provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$ClientProvider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "$ServerProvider"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    move-object v13, v7

    const-string/jumbo v7, "put"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljavax/net/ssl/SSLSocket;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    aput-object v5, v8, v3

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v14, v7

    const-string v7, "get"

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Ljavax/net/ssl/SSLSocket;

    aput-object v9, v8, v10

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v15, v7

    const-string/jumbo v7, "remove"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v8, Ljavax/net/ssl/SSLSocket;

    aput-object v8, v3, v10

    invoke-virtual {v4, v7, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v16, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;

    const-string/jumbo v7, "putMethod"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "getMethod"

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "removeMethod"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "clientProviderClass"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "serverProviderClass"

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, v16

    move-object v8, v14

    move-object v9, v15

    move-object v10, v3

    move-object v11, v6

    move-object v12, v13

    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V

    check-cast v16, Lokhttp3/internal/platform/Platform;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v16

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    nop

    return-object v2
.end method
