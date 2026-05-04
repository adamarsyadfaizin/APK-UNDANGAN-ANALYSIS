.class final Lcom/google/android/material/carousel/CarouselStrategyHelper;
.super Ljava/lang/Object;
.source "CarouselStrategyHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createLeftAlignedKeylineState(Landroid/content/Context;FFLcom/google/android/material/carousel/Arrangement;)Lcom/google/android/material/carousel/KeylineState;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "childHorizontalMargins"    # F
    .param p2, "availableSpace"    # F
    .param p3, "arrangement"    # Lcom/google/android/material/carousel/Arrangement;

    move/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static/range {p0 .. p0}, Lcom/google/android/material/carousel/CarouselStrategyHelper;->getExtraSmallSize(Landroid/content/Context;)F

    move-result v2

    add-float/2addr v2, v0

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v2, v4

    sub-float v5, v3, v5

    iget v6, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    div-float/2addr v6, v4

    add-float/2addr v6, v3

    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    mul-float/2addr v7, v8

    add-float v13, v6, v7

    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    div-float/2addr v7, v4

    add-float/2addr v7, v13

    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-lez v3, :cond_0

    iget v3, v1, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    div-float/2addr v3, v4

    add-float/2addr v3, v7

    goto :goto_0

    :cond_0
    move v3, v13

    :goto_0
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-lez v8, :cond_1

    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    div-float/2addr v8, v4

    add-float/2addr v8, v3

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    move v14, v8

    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v7, :cond_2

    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    div-float/2addr v7, v4

    add-float/2addr v7, v14

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    move v15, v7

    div-float v4, v2, v4

    add-float v4, p2, v4

    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    invoke-static {v2, v7, v0}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v12

    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    invoke-static {v7, v8, v0}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v11

    iget v7, v1, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    invoke-static {v7, v8, v0}, Lcom/google/android/material/carousel/CarouselStrategy;->getChildMaskPercentage(FFF)F

    move-result v10

    const/16 v16, 0x0

    new-instance v7, Lcom/google/android/material/carousel/KeylineState$Builder;

    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    invoke-direct {v7, v8}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(F)V

    invoke-virtual {v7, v5, v12, v2}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v7

    iget v9, v1, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    const/16 v17, 0x1

    move/from16 v18, v8

    move v8, v6

    move/from16 v19, v9

    move/from16 v9, v16

    move/from16 v20, v10

    move/from16 v10, v19

    move v0, v11

    move/from16 v11, v18

    move/from16 v18, v5

    move v5, v12

    move/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFIZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    move-result-object v7

    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-lez v8, :cond_3

    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    move/from16 v9, v20

    invoke-virtual {v7, v3, v9, v8}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    goto :goto_3

    :cond_3
    move/from16 v9, v20

    :goto_3
    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v8, :cond_4

    iget v8, v1, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    iget v10, v1, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    invoke-virtual {v7, v15, v0, v8, v10}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeylineRange(FFFI)Lcom/google/android/material/carousel/KeylineState$Builder;

    :cond_4
    invoke-virtual {v7, v4, v5, v2}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFF)Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual {v7}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v8

    return-object v8
.end method

.method static getExtraSmallSize(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_carousel_gone_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static getSmallSizeMax(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static getSmallSizeMin(Landroid/content/Context;)F
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->m3_carousel_small_item_size_min:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method static maxValue([I)I
    .locals 4
    .param p0, "array"    # [I

    const/high16 v0, -0x80000000

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    if-le v3, v0, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
