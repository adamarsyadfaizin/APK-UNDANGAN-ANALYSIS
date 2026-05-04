.class public final Lcom/google/android/material/color/utilities/MaterialDynamicColors;
.super Ljava/lang/Object;
.source "MaterialDynamicColors.java"


# static fields
.field private static final CONTAINER_ACCENT_TONE_DELTA:D = 15.0


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findDesiredChromaByTone(DDDZ)D
    .locals 13
    .param p0, "hue"    # D
    .param p2, "chroma"    # D
    .param p4, "tone"    # D
    .param p6, "byDecreasingTone"    # Z

    move-wide/from16 v0, p4

    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    cmpg-double v3, v3, p2

    if-gez v3, :cond_5

    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    move-object v6, v2

    move-wide v7, v3

    :goto_0
    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_4

    if-eqz p6, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_1
    add-double v9, v0, v2

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, v9

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    cmpl-double v1, v7, v1

    if-lez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    sub-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    nop

    :goto_2
    move-object v2, v6

    move-wide v0, v9

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    sub-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    sub-double/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_3

    move-object v6, v0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    move-wide v0, v9

    goto :goto_0

    :cond_4
    move-object v2, v6

    :cond_5
    :goto_3
    return-wide v0
.end method

.method private static isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z
    .locals 2
    .param p0, "scheme"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v1, Lcom/google/android/material/color/utilities/Variant;->FIDELITY:Lcom/google/android/material/color/utilities/Variant;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v1, Lcom/google/android/material/color/utilities/Variant;->CONTENT:Lcom/google/android/material/color/utilities/Variant;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z
    .locals 2
    .param p0, "scheme"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v1, Lcom/google/android/material/color/utilities/Variant;->MONOCHROME:Lcom/google/android/material/color/utilities/Variant;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$background$10(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$background$11(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlActivated$130(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$controlActivated$131(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlHighlight$134(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlHighlight$135(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlHighlight$136(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlHighlight$137(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x3fc999999999999aL    # 0.2

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlHighlight$138(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlHighlight$139(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "scheme"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda54;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda54;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->toneMinContrastDefault(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicScheme;Ljava/util/function/Function;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlHighlight$140(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlHighlight$141(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "scheme"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda44;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda44;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->toneMaxContrastDefault(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/DynamicScheme;Ljava/util/function/Function;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$controlNormal$132(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$controlNormal$133(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$error$94(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$error$95(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$errorContainer$89(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$errorContainer$90(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$inverseOnSurface$35(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$inverseOnSurface$36(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4057c00000000000L    # 95.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$inversePrimary$61(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$inversePrimary$62(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$inverseSurface$17(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$inverseSurface$18(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$neutralPaletteKeyColor$6(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$neutralPaletteKeyColor$7(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$neutralVariantPaletteKeyColor$8(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$neutralVariantPaletteKeyColor$9(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onBackground$12(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onBackground$13(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onError$97(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onError$98(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onErrorContainer$91(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onErrorContainer$92(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onPrimary$64(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onPrimary$65(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onPrimaryContainer$55(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onPrimaryFixed$104(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onPrimaryFixed$105(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onPrimaryFixedVariant$107(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onPrimaryFixedVariant$108(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x4051800000000000L    # 70.0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onSecondary$75(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onSecondary$76(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_2

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onSecondaryContainer$69(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onSecondaryFixed$114(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onSecondaryFixed$115(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onSecondaryFixedVariant$117(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onSecondaryFixedVariant$118(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onSurface$33(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onSurface$34(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onSurfaceVariant$40(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onSurfaceVariant$41(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onTertiary$86(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onTertiary$87(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onTertiaryContainer$80(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onTertiaryFixed$124(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onTertiaryFixed$125(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onTertiaryFixedVariant$127(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$onTertiaryFixedVariant$128(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x4051800000000000L    # 70.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$outline$43(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$outline$44(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$outlineVariant$45(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$outlineVariant$46(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$primary$58(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$primary$59(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$primaryContainer$53(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$primaryContainer$54(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    invoke-static {v0, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_1

    const-wide v0, 0x4055400000000000L    # 85.0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_3

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_1

    :cond_3
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$primaryFixed$100(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$primaryFixed$101(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide v0, 0x4056800000000000L    # 90.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$primaryFixedDim$102(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$primaryFixedDim$103(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$primaryPaletteKeyColor$0(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$primaryPaletteKeyColor$1(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$scrim$49(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$scrim$50(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$secondary$72(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$secondary$73(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$secondaryContainer$67(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$secondaryContainer$68(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 10
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x4055400000000000L    # 85.0

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide v1, 0x4056800000000000L    # 90.0

    :goto_1
    move-wide v7, v1

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getHue()D

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getChroma()D

    move-result-wide v5

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    xor-int/lit8 v9, v0, 0x1

    invoke-static/range {v3 .. v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->findDesiredChromaByTone(DDDZ)D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$secondaryFixed$110(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$secondaryFixed$111(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$secondaryFixedDim$112(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$secondaryFixedDim$113(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x4051800000000000L    # 70.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$secondaryPaletteKeyColor$2(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$secondaryPaletteKeyColor$3(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$shadow$47(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$shadow$48(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surface$15(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surface$16(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surfaceBright$19(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surfaceBright$20(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surfaceContainer$27(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surfaceContainer$28(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4057800000000000L    # 94.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surfaceContainerHigh$29(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surfaceContainerHigh$30(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4057000000000000L    # 92.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surfaceContainerHighest$31(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surfaceContainerHighest$32(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4036000000000000L    # 22.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surfaceContainerLow$25(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surfaceContainerLow$26(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surfaceContainerLowest$23(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surfaceContainerLowest$24(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surfaceDim$21(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surfaceDim$22(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4055c00000000000L    # 87.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surfaceTint$51(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surfaceTint$52(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$surfaceVariant$38(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$surfaceVariant$39(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$tertiary$83(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$tertiary$84(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$tertiaryContainer$78(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$tertiaryContainer$79(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 5
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4048800000000000L    # 49.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_2

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_1

    :cond_2
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/color/utilities/DislikeAnalyzer;->fixIfDisliked(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$tertiaryFixed$120(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$tertiaryFixed$121(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$tertiaryFixedDim$122(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$tertiaryFixedDim$123(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$tertiaryPaletteKeyColor$4(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$tertiaryPaletteKeyColor$5(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$textHintInverse$150(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$textHintInverse$151(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$textPrimaryInverse$142(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$textPrimaryInverse$143(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$textPrimaryInverseDisableOnly$146(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$textPrimaryInverseDisableOnly$147(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverse$144(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverse$145(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverseDisabled$148(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 1
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object v0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverseDisabled$149(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2
    .param p0, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D
    .locals 3
    .param p0, "prealbers"    # Lcom/google/android/material/color/utilities/Hct;
    .param p1, "scheme"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->viewingConditionsForAlbers(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/utilities/Hct;->inViewingConditions(Lcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->toneAllowsLightForeground(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->enableLightForeground(D)D

    move-result-wide v1

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->enableLightForeground(D)D

    move-result-wide v1

    return-wide v1
.end method

.method private static viewingConditionsForAlbers(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ViewingConditions;
    .locals 2
    .param p0, "scheme"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ViewingConditions;->defaultWithBackgroundLstar(D)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public background()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda16;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public controlActivated()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda83;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda83;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda84;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda84;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public controlHighlight()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10

    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda134;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda134;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda135;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda135;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda136;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda136;-><init>()V

    new-instance v4, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda137;

    invoke-direct {v4}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda137;-><init>()V

    const/4 v5, 0x0

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda138;

    invoke-direct {v6}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda138;-><init>()V

    new-instance v7, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda139;

    invoke-direct {v7}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda139;-><init>()V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public controlNormal()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public error()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda68;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda68;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda69;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda69;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda70;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda70;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda38;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda38;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda39;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda39;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    iget-boolean v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public inverseOnSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda29;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda30;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda31;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda31;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public inversePrimary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda76;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda76;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda77;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda77;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda78;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda78;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda66;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda66;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda67;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda67;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$error$96$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaConstraint;
    .locals 5
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/material/color/utilities/TonePolarity;->DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    :goto_0
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;-><init>(DLcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/TonePolarity;)V

    return-object v0
.end method

.method synthetic lambda$inverseOnSurface$37$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$inversePrimary$63$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onBackground$14$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onError$99$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onErrorContainer$93$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onPrimary$66$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onPrimaryContainer$56$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 4
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->contrastingTone(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_2
    iget-boolean v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_3

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onPrimaryContainer$57$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onPrimaryFixed$106$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onPrimaryFixedVariant$109$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onSecondary$77$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onSecondaryContainer$70$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 4
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->contrastingTone(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onSecondaryContainer$71$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onSecondaryFixed$116$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onSecondaryFixedVariant$119$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onSurfaceVariant$42$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onTertiary$88$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onTertiaryContainer$81$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 4
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v0, :cond_2

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4012000000000000L    # 4.5

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->contrastingTone(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onTertiaryContainer$82$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onTertiaryFixed$126$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$onTertiaryFixedVariant$129$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 1
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$primary$60$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaConstraint;
    .locals 5
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/material/color/utilities/TonePolarity;->DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    :goto_0
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;-><init>(DLcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/TonePolarity;)V

    return-object v0
.end method

.method synthetic lambda$secondary$74$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaConstraint;
    .locals 5
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/material/color/utilities/TonePolarity;->DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    :goto_0
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;-><init>(DLcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/TonePolarity;)V

    return-object v0
.end method

.method synthetic lambda$tertiary$85$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaConstraint;
    .locals 5
    .param p1, "s"    # Lcom/google/android/material/color/utilities/DynamicScheme;

    new-instance v0, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    iget-boolean v2, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/material/color/utilities/TonePolarity;->DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    :goto_0
    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/android/material/color/utilities/ToneDeltaConstraint;-><init>(DLcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/TonePolarity;)V

    return-object v0
.end method

.method public neutralPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda25;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public neutralVariantPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda99;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda100;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda100;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onBackground()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda47;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda48;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda48;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda49;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda49;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onError()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda113;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda113;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda114;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda114;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda115;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda115;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onErrorContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda55;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda55;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda59;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda59;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda60;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda60;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onPrimary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda91;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda92;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda92;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda93;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda93;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onPrimaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda43;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda45;

    invoke-direct {v1, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda45;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda46;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda46;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onPrimaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda103;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda103;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda104;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda104;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda105;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda105;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onPrimaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda145;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda145;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda146;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda146;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda147;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda147;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onSecondary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda120;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda120;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda121;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda121;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda122;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda122;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onSecondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda56;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda56;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda57;

    invoke-direct {v1, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda57;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda58;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda58;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onSecondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda11;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda33;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onSecondaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda35;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda36;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda37;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda81;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda82;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda82;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onSurfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda116;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda116;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda117;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda117;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda118;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda118;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onTertiary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda126;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda126;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda127;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda127;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda128;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda128;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onTertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda150;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda150;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda151;

    invoke-direct {v1, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda151;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onTertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda123;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda123;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda124;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda124;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda125;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda125;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public onTertiaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda40;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda41;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda41;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda42;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public outline()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda27;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda28;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public outlineVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda106;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda106;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda107;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda107;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public primary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda88;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda88;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda89;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda89;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda90;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda90;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda64;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda64;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda61;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda61;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda62;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda62;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda87;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda87;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public primaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda79;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda79;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda80;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda80;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public scrim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda101;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda101;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda102;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda102;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public secondary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda108;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda108;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda119;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda119;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda130;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda130;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda10;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda141;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda141;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda152;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda152;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda63;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda65;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda65;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public secondaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda71;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda71;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda72;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda72;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public shadow()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda129;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda129;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda131;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda131;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda20;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda12;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surfaceContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda111;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda111;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda112;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda112;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surfaceContainerHigh()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda14;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surfaceContainerHighest()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda18;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surfaceContainerLow()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda109;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda109;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda110;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda110;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surfaceContainerLowest()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda94;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda95;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda95;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda23;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surfaceTint()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda73;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda73;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda74;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda74;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public surfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda52;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda52;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda53;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda53;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public tertiary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 4

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda143;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda143;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda144;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda144;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda148;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda148;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda149;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda149;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 3

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda140;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda140;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda142;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda142;-><init>()V

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v2, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public tertiaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda50;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda50;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda51;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda51;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textHintInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textPrimaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda96;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda96;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda98;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda98;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textPrimaryInverseDisableOnly()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda32;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda32;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda34;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textSecondaryAndTertiaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda86;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda86;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda97;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda97;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method

.method public textSecondaryAndTertiaryInverseDisabled()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda132;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda132;-><init>()V

    new-instance v1, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda133;

    invoke-direct {v1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda133;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    return-object v0
.end method
