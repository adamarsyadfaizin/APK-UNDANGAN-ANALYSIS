.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "01A0.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketExtensions$Companion;",
        "",
        "()V",
        "HEADER_WEB_SOCKET_EXTENSION",
        "",
        "parse",
        "Lokhttp3/internal/ws/WebSocketExtensions;",
        "responseHeaders",
        "Lokhttp3/Headers;",
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

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 23
    .param p1, "responseHeaders"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string/jumbo v1, "responseHeaders"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_14

    invoke-virtual {v0, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Sec-WebSocket-Extensions"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v0, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_13

    const/16 v14, 0x2c

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v10

    move v15, v11

    invoke-static/range {v13 .. v18}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v13

    const/16 v14, 0x3b

    invoke-static {v10, v14, v11, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v15

    invoke-static {v10, v11, v15}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 1
    .local v0, "01A0.java:1":V
    invoke-static {v2}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v2}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    add-int/lit8 v11, v15, 0x1

    nop

    const-string/jumbo v14, "permessage-deflate"

    invoke-static {v2, v14, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_12

    if-eqz v1, :cond_1

    const/4 v7, 0x1

    :cond_1
    const/4 v1, 0x1

    :goto_2
    if-ge v11, v13, :cond_11

    const/16 v14, 0x3b

    invoke-static {v10, v14, v11, v13}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v12

    const/16 v14, 0x3d

    invoke-static {v10, v14, v11, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v14

    invoke-static {v10, v11, v14}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 2
    .local v0, "01A0.java:2":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    if-ge v14, v12, :cond_2

    move/from16 v19, v1

    add-int/lit8 v1, v14, 0x1

    invoke-static {v10, v1, v12}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 3
    .local v0, "01A0.java:3":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    const-string v20, "\""

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4
    .local v0, "01A0.java:4":V
    invoke-static {v1}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v1}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    move/from16 v19, v1

    move-object/from16 v21, v2

    const/4 v1, 0x0

    :goto_3
    nop

    add-int/lit8 v11, v12, 0x1

    nop

    const-string v2, "client_max_window_bits"

    move/from16 v20, v7

    const/4 v7, 0x1

    invoke-static {v0, v2, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v3, :cond_3

    const/4 v7, 0x1

    goto :goto_4

    :cond_3
    move/from16 v7, v20

    :goto_4
    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_5

    const/4 v3, 0x1

    const/4 v7, 0x1

    move/from16 v22, v3

    move-object v3, v2

    move/from16 v2, v22

    goto/16 :goto_a

    :cond_5
    move-object v3, v2

    move v2, v7

    const/4 v7, 0x1

    goto :goto_a

    :cond_6
    const-string v2, "client_no_context_takeover"

    const/4 v7, 0x1

    invoke-static {v0, v2, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v4, :cond_7

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    move/from16 v7, v20

    :goto_6
    if-eqz v1, :cond_8

    const/4 v7, 0x1

    :cond_8
    const/4 v2, 0x1

    move v4, v2

    move v2, v7

    const/4 v7, 0x1

    goto :goto_a

    :cond_9
    const-string/jumbo v2, "server_max_window_bits"

    const/4 v7, 0x1

    invoke-static {v0, v2, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v5, :cond_a

    const/4 v7, 0x1

    goto :goto_7

    :cond_a
    move/from16 v7, v20

    :goto_7
    if-eqz v1, :cond_b

    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_c

    const/4 v5, 0x1

    const/4 v7, 0x1

    move/from16 v22, v5

    move-object v5, v2

    move/from16 v2, v22

    goto :goto_a

    :cond_c
    move-object v5, v2

    move v2, v7

    const/4 v7, 0x1

    goto :goto_a

    :cond_d
    const-string/jumbo v2, "server_no_context_takeover"

    const/4 v7, 0x1

    invoke-static {v0, v2, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v6, :cond_e

    const/4 v2, 0x1

    goto :goto_9

    :cond_e
    move/from16 v2, v20

    :goto_9
    if-eqz v1, :cond_f

    const/4 v2, 0x1

    :cond_f
    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    const/4 v2, 0x1

    :goto_a
    nop

    move-object/from16 v0, p1

    move v12, v7

    move/from16 v1, v19

    move v7, v2

    move-object/from16 v2, v21

    goto/16 :goto_2

    :cond_11
    move/from16 v19, v1

    move-object/from16 v21, v2

    move/from16 v20, v7

    move v7, v12

    move v0, v7

    move/from16 v7, v20

    goto :goto_b

    :cond_12
    move-object/from16 v21, v2

    move v0, v12

    const/4 v2, 0x1

    move v7, v2

    :goto_b
    nop

    move v12, v0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_13
    :goto_c
    nop

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_14
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    nop

    nop

    nop

    nop

    nop

    nop

    move-object v10, v0

    move v11, v1

    move-object v12, v3

    move v13, v4

    move-object v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    return-object v0
.end method
