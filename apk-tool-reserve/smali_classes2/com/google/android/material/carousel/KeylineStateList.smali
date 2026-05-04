.class Lcom/google/android/material/carousel/KeylineStateList;
.super Ljava/lang/Object;
.source "KeylineStateList.java"


# static fields
.field private static final NO_INDEX:I = -0x1


# instance fields
.field private final defaultState:Lcom/google/android/material/carousel/KeylineState;

.field private final endShiftRange:F

.field private final endStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final endStateStepsInterpolationPoints:[F

.field private final startShiftRange:F

.field private final startStateSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation
.end field

.field private final startStateStepsInterpolationPoints:[F


# direct methods
.method private constructor <init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p1, "defaultState"    # Lcom/google/android/material/carousel/KeylineState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/KeylineState;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    nop

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    nop

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    nop

    invoke-static {v0, p2, v1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    nop

    const/4 v0, 0x0

    invoke-static {v2, p3, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepInterpolationPoints(FLjava/util/List;Z)[F

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    return-void
.end method

.method private closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .locals 3
    .param p2, "interpolation"    # F
    .param p3, "stateStepsInterpolationPoints"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    nop

    invoke-static {p1, p2, p3}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget v1, v0, v1

    float-to-int v1, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    return-object v1

    :cond_0
    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-int v1, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    return-object v1
.end method

.method private static findFirstInBoundsKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I
    .locals 3
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 3
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "mask"    # F

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private static findLastInBoundsKeylineIndex(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)I
    .locals 4
    .param p0, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p1, "state"    # Lcom/google/android/material/carousel/KeylineState;

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I
    .locals 3
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "mask"    # F

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static from(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Lcom/google/android/material/carousel/KeylineStateList;
    .locals 3
    .param p0, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p1, "state"    # Lcom/google/android/material/carousel/KeylineState;

    new-instance v0, Lcom/google/android/material/carousel/KeylineStateList;

    invoke-static {p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsStart(Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/material/carousel/KeylineStateList;-><init>(Lcom/google/android/material/carousel/KeylineState;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static getStateStepInterpolationPoints(FLjava/util/List;Z)[F
    .locals 8
    .param p0, "shiftRange"    # F
    .param p2, "isShiftingLeft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;Z)[F"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/KeylineState;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState;

    if-eqz p2, :cond_0

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v6

    iget v6, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v5, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v5

    iget v5, v5, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    invoke-virtual {v4}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v6

    iget v6, v6, Lcom/google/android/material/carousel/KeylineState$Keyline;->loc:F

    sub-float/2addr v5, v6

    :goto_1
    nop

    div-float v6, v5, p0

    nop

    add-int/lit8 v7, v0, -0x1

    if-ne v2, v7, :cond_1

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v2, -0x1

    aget v7, v1, v7

    add-float/2addr v7, v6

    :goto_2
    aput v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static getStateStepsEnd(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;
    .locals 19
    .param p0, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p1, "defaultState"    # Lcom/google/android/material/carousel/KeylineState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/Carousel;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p1}, Lcom/google/android/material/carousel/KeylineStateList;->findLastInBoundsKeylineIndex(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)I

    move-result v8

    invoke-static/range {p0 .. p1}, Lcom/google/android/material/carousel/KeylineStateList;->isLastFocalItemAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-ne v8, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v9

    move v10, v8

    sub-int v11, v10, v9

    nop

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v12, v2, v3

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    if-ge v13, v11, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/material/carousel/KeylineState;

    sub-int v15, v10, v13

    const/4 v2, 0x0

    add-int/lit8 v3, v15, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v15, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    nop

    invoke-static {v14, v3}, Lcom/google/android/material/carousel/KeylineStateList;->findLastIndexBeforeFirstFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    move/from16 v16, v2

    goto :goto_1

    :cond_1
    move/from16 v16, v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v2

    add-int/2addr v2, v13

    add-int/lit8 v17, v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v2

    add-int/2addr v2, v13

    add-int/lit8 v18, v2, 0x1

    nop

    move-object v2, v14

    move v3, v8

    move/from16 v4, v16

    move v5, v12

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static getStateStepsRange(Ljava/util/List;F[F)[F
    .locals 10
    .param p1, "interpolation"    # F
    .param p2, "stateStepsInterpolationPoints"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)[F"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    aget v2, p2, v1

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v0, :cond_1

    aget v5, p2, v3

    cmpg-float v6, p1, v5

    if-gtz v6, :cond_0

    add-int/lit8 v6, v3, -0x1

    move v7, v3

    nop

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v2, v5, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v8

    new-array v4, v4, [F

    aput v8, v4, v1

    int-to-float v1, v6

    const/4 v9, 0x1

    aput v1, v4, v9

    const/4 v1, 0x2

    int-to-float v9, v7

    aput v9, v4, v1

    return-object v4

    :cond_0
    move v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private static getStateStepsStart(Lcom/google/android/material/carousel/KeylineState;)Ljava/util/List;
    .locals 19
    .param p0, "defaultState"    # Lcom/google/android/material/carousel/KeylineState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/carousel/KeylineState;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstInBoundsKeylineIndex(Lcom/google/android/material/carousel/KeylineState;)I

    move-result v8

    invoke-static/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineStateList;->isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-ne v8, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    move v9, v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    sub-int v11, v10, v9

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v12, v2, v3

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    if-gt v13, v11, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/material/carousel/KeylineState;

    add-int v15, v9, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v15, -0x1

    if-ltz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v15, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v3, v3, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    nop

    invoke-static {v14, v3}, Lcom/google/android/material/carousel/KeylineStateList;->findFirstIndexAfterLastFocalKeylineWithMask(Lcom/google/android/material/carousel/KeylineState;F)I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    move/from16 v16, v2

    goto :goto_1

    :cond_1
    move/from16 v16, v2

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeylineIndex()I

    move-result v2

    sub-int/2addr v2, v13

    add-int/lit8 v17, v2, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeylineIndex()I

    move-result v2

    sub-int/2addr v2, v13

    add-int/lit8 v18, v2, -0x1

    nop

    move-object v2, v14

    move v3, v8

    move/from16 v4, v16

    move v5, v12

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-static/range {v2 .. v7}, Lcom/google/android/material/carousel/KeylineStateList;->moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFII)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private static isFirstFocalItemAtLeftOfContainer(Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 3
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;

    nop

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getFirstKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isLastFocalItemAtRightOfContainer(Lcom/google/android/material/carousel/Carousel;Lcom/google/android/material/carousel/KeylineState;)Z
    .locals 4
    .param p0, "carousel"    # Lcom/google/android/material/carousel/Carousel;
    .param p1, "state"    # Lcom/google/android/material/carousel/KeylineState;

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerHeight()I

    move-result v0

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/material/carousel/Carousel;->getContainerWidth()I

    move-result v0

    :cond_0
    nop

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/carousel/KeylineState$Keyline;->locOffset:F

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    int-to-float v2, v0

    cmpl-float v2, v1, v2

    if-gez v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastFocalKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/material/carousel/KeylineState;->getLastKeyline()Lcom/google/android/material/carousel/KeylineState$Keyline;

    move-result-object v3

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private static lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;
    .locals 4
    .param p1, "interpolation"    # F
    .param p2, "stateStepsInterpolationPoints"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;F[F)",
            "Lcom/google/android/material/carousel/KeylineState;"
        }
    .end annotation

    nop

    invoke-static {p0, p1, p2}, Lcom/google/android/material/carousel/KeylineStateList;->getStateStepsRange(Ljava/util/List;F[F)[F

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-int v1, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState;

    const/4 v2, 0x2

    aget v2, v0, v2

    float-to-int v2, v2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/carousel/KeylineState;

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v1, v2, v3}, Lcom/google/android/material/carousel/KeylineState;->lerp(Lcom/google/android/material/carousel/KeylineState;Lcom/google/android/material/carousel/KeylineState;F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v1

    return-object v1
.end method

.method private static moveKeylineAndCreateKeylineState(Lcom/google/android/material/carousel/KeylineState;IIFII)Lcom/google/android/material/carousel/KeylineState;
    .locals 9
    .param p0, "state"    # Lcom/google/android/material/carousel/KeylineState;
    .param p1, "keylineSrcIndex"    # I
    .param p2, "keylineDstIndex"    # I
    .param p3, "startOffset"    # F
    .param p4, "newFirstFocalIndex"    # I
    .param p5, "newLastFocalIndex"    # I

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getKeylines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/carousel/KeylineState$Keyline;

    invoke-interface {v0, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v2, Lcom/google/android/material/carousel/KeylineState$Builder;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/android/material/carousel/KeylineState$Builder;-><init>(F)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/carousel/KeylineState$Keyline;

    iget v5, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v5, p3

    if-lt v3, p4, :cond_0

    if-gt v3, p5, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    iget v7, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->mask:F

    iget v8, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    invoke-virtual {v2, v5, v7, v8, v6}, Lcom/google/android/material/carousel/KeylineState$Builder;->addKeyline(FFFZ)Lcom/google/android/material/carousel/KeylineState$Builder;

    iget v7, v4, Lcom/google/android/material/carousel/KeylineState$Keyline;->maskedItemSize:F

    add-float/2addr p3, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState$Builder;->build()Lcom/google/android/material/carousel/KeylineState;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method getDefaultState()Lcom/google/android/material/carousel/KeylineState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method getEndState()Lcom/google/android/material/carousel/KeylineState;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method

.method getKeylineStateForPositionMap(IIIZ)Ljava/util/Map;
    .locals 17
    .param p1, "itemCount"    # I
    .param p2, "minHorizontalScroll"    # I
    .param p3, "maxHorizontalScroll"    # I
    .param p4, "isRTL"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/carousel/KeylineState;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    invoke-virtual {v2}, Lcom/google/android/material/carousel/KeylineState;->getItemSize()F

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v9, 0x1

    if-ge v6, v1, :cond_4

    if-eqz p4, :cond_0

    sub-int v10, v1, v6

    sub-int/2addr v10, v9

    goto :goto_1

    :cond_0
    move v10, v6

    :goto_1
    int-to-float v11, v10

    mul-float/2addr v11, v2

    if-eqz p4, :cond_1

    const/4 v8, -0x1

    goto :goto_2

    :cond_1
    move v8, v9

    :goto_2
    int-to-float v8, v8

    mul-float/2addr v11, v8

    move/from16 v12, p3

    int-to-float v8, v12

    iget v13, v0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float/2addr v8, v13

    cmpl-float v8, v11, v8

    if-gtz v8, :cond_2

    iget-object v8, v0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int v8, v1, v8

    if-lt v6, v8, :cond_3

    :cond_2
    nop

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v13, v0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v9

    invoke-static {v4, v7, v14}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v7

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/carousel/KeylineState;

    invoke-interface {v3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    move/from16 v12, p3

    add-int/lit8 v6, v1, -0x1

    :goto_3
    if-ltz v6, :cond_9

    if-eqz p4, :cond_5

    sub-int v10, v1, v6

    sub-int/2addr v10, v9

    goto :goto_4

    :cond_5
    move v10, v6

    :goto_4
    int-to-float v11, v10

    mul-float/2addr v11, v2

    if-eqz p4, :cond_6

    const/4 v13, -0x1

    goto :goto_5

    :cond_6
    move v13, v9

    :goto_5
    int-to-float v13, v13

    mul-float/2addr v11, v13

    move/from16 v13, p2

    int-to-float v14, v13

    iget v15, v0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v14, v15

    cmpg-float v14, v11, v14

    if-ltz v14, :cond_7

    iget-object v14, v0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_8

    :cond_7
    nop

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v8, v16, -0x1

    invoke-static {v5, v7, v8}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v8

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/carousel/KeylineState;

    invoke-interface {v3, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_9
    move/from16 v13, p2

    return-object v3
.end method

.method public getShiftedState(FFF)Lcom/google/android/material/carousel/KeylineState;
    .locals 1
    .param p1, "scrollOffset"    # F
    .param p2, "minScrollOffset"    # F
    .param p3, "maxScrollOffset"    # F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/carousel/KeylineStateList;->getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v0

    return-object v0
.end method

.method getShiftedState(FFFZ)Lcom/google/android/material/carousel/KeylineState;
    .locals 6
    .param p1, "scrollOffset"    # F
    .param p2, "minScrollOffset"    # F
    .param p3, "maxScrollOffset"    # F
    .param p4, "roundToNearestStep"    # Z

    iget v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startShiftRange:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/google/android/material/carousel/KeylineStateList;->endShiftRange:F

    sub-float v1, p3, v1

    cmpg-float v2, p1, v0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    nop

    invoke-static {v4, v3, p2, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateStepsInterpolationPoints:[F

    goto :goto_0

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    nop

    invoke-static {v3, v4, v1, p3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateSteps:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/material/carousel/KeylineStateList;->endStateStepsInterpolationPoints:[F

    :goto_0
    if-eqz p4, :cond_1

    invoke-direct {p0, v3, v2, v4}, Lcom/google/android/material/carousel/KeylineStateList;->closestStateStepFromInterpolation(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v5

    return-object v5

    :cond_1
    invoke-static {v3, v2, v4}, Lcom/google/android/material/carousel/KeylineStateList;->lerp(Ljava/util/List;F[F)Lcom/google/android/material/carousel/KeylineState;

    move-result-object v5

    return-object v5

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/carousel/KeylineStateList;->defaultState:Lcom/google/android/material/carousel/KeylineState;

    return-object v2
.end method

.method getStartState()Lcom/google/android/material/carousel/KeylineState;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/carousel/KeylineStateList;->startStateSteps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/carousel/KeylineState;

    return-object v0
.end method
