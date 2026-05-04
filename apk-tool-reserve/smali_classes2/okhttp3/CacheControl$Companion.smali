.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001e\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/CacheControl$Companion;",
        "",
        "()V",
        "FORCE_CACHE",
        "Lokhttp3/CacheControl;",
        "FORCE_NETWORK",
        "parse",
        "headers",
        "Lokhttp3/Headers;",
        "indexOfElement",
        "",
        "",
        "characters",
        "startIndex",
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

    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .param p1, "$this$indexOfElement"    # Ljava/lang/String;
    .param p2, "characters"    # Ljava/lang/String;
    .param p3, "startIndex"    # I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v1, p3

    :goto_0
    if-ge v1, v0, :cond_1

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 35
    .param p1, "headers"    # Lokhttp3/Headers;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "headers"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v14

    const/16 v16, 0x0

    move/from16 v34, v16

    move/from16 v16, v12

    move/from16 v12, v34

    :goto_0
    if-ge v12, v14, :cond_19

    move/from16 v17, v14

    invoke-virtual {v0, v12}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v32, v11

    invoke-virtual {v0, v12}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    nop

    const-string v0, "Cache-Control"

    move/from16 v33, v10

    const/4 v10, 0x1

    invoke-static {v14, v0, v10}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v15, :cond_0

    const/4 v13, 0x0

    goto :goto_1

    :cond_0
    move-object v15, v11

    goto :goto_1

    :cond_1
    const-string v0, "Pragma"

    invoke-static {v14, v0, v10}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v13, 0x0

    :goto_1
    nop

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v0, v10, :cond_17

    move v10, v0

    move/from16 v19, v1

    move-object/from16 v1, p0

    check-cast v1, Lokhttp3/CacheControl$Companion;

    move/from16 v20, v2

    const-string v2, "=,;"

    invoke-direct {v1, v11, v2, v0}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    if-eqz v11, :cond_16

    invoke-virtual {v11, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move/from16 v21, v3

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v22, v4

    const-string v4, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v2, :cond_15

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v23, 0x0

    move/from16 v24, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_8

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v25, v6

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_7

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3b

    if-ne v5, v6, :cond_2

    move/from16 v26, v7

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-static {v11, v0}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    move-object/from16 v26, v11

    check-cast v26, Ljava/lang/CharSequence;

    const/16 v27, 0x22

    const/16 v29, 0x0

    const/16 v30, 0x4

    const/16 v31, 0x0

    move/from16 v28, v0

    invoke-static/range {v26 .. v31}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-eqz v11, :cond_3

    invoke-virtual {v11, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    nop

    add-int/lit8 v0, v0, 0x1

    move/from16 v26, v7

    goto :goto_4

    :cond_3
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move v5, v0

    move-object/from16 v6, p0

    check-cast v6, Lokhttp3/CacheControl$Companion;

    move/from16 v26, v7

    const-string v7, ",;"

    invoke-direct {v6, v11, v7, v0}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v11, :cond_6

    invoke-virtual {v11, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    move/from16 v26, v7

    goto :goto_3

    :cond_8
    move/from16 v25, v6

    move/from16 v26, v7

    :goto_3
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    :goto_4
    nop

    nop

    nop

    const-string v3, "no-cache"

    const/4 v5, 0x1

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    move v1, v3

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_5

    :cond_9
    const-string v3, "no-store"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    move v2, v3

    move/from16 v1, v19

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_5

    :cond_a
    const-string v3, "max-age"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_b

    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_5

    :cond_b
    const-string/jumbo v3, "s-maxage"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_5

    :cond_c
    const-string/jumbo v3, "private"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    move/from16 v24, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_5

    :cond_d
    const-string/jumbo v3, "public"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    move v6, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v7, v26

    goto/16 :goto_5

    :cond_e
    const-string v3, "must-revalidate"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x1

    move v7, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    goto/16 :goto_5

    :cond_f
    const-string v3, "max-stale"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    const v3, 0x7fffffff

    invoke-static {v1, v3}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v3

    move v8, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto/16 :goto_5

    :cond_10
    const-string v3, "min-fresh"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {v1, v4}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v3

    move v9, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto :goto_5

    :cond_11
    const-string/jumbo v3, "only-if-cached"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    move/from16 v33, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto :goto_5

    :cond_12
    const-string v3, "no-transform"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    move/from16 v32, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto :goto_5

    :cond_13
    const-string v3, "immutable"

    invoke-static {v3, v2, v5}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    move/from16 v16, v3

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    goto :goto_5

    :cond_14
    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v6, v25

    move/from16 v7, v26

    :goto_5
    nop

    move v10, v5

    move/from16 v5, v24

    goto/16 :goto_2

    :cond_15
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_17
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    move/from16 v11, v32

    move/from16 v10, v33

    goto :goto_6

    :cond_18
    move/from16 v11, v32

    move/from16 v10, v33

    :goto_6
    nop

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v14, v17

    goto/16 :goto_0

    :cond_19
    move/from16 v33, v10

    move/from16 v32, v11

    if-nez v13, :cond_1a

    const/4 v0, 0x0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    :cond_1a
    new-instance v0, Lokhttp3/CacheControl;

    nop

    const/16 v31, 0x0

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v33

    move/from16 v28, v32

    move/from16 v29, v16

    move-object/from16 v30, v15

    invoke-direct/range {v17 .. v31}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
