.class public Lcom/google/android/material/shape/ShapePathModel;
.super Lcom/google/android/material/shape/ShapeAppearanceModel;
.source "ShapePathModel.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    return-void
.end method


# virtual methods
.method public setAllCorners(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "cornerTreatment"    # Lcom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setAllEdges(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "edgeTreatment"    # Lcom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setBottomEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "bottomEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setBottomLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "bottomLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setBottomRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "bottomRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setCornerTreatments(Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "topLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .param p2, "topRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .param p3, "bottomRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .param p4, "bottomLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object p2, p0, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object p3, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    iput-object p4, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setEdgeTreatments(Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "leftEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .param p2, "topEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .param p3, "rightEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .param p4, "bottomEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object p2, p0, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object p3, p0, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    iput-object p4, p0, Lcom/google/android/material/shape/ShapePathModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setLeftEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "leftEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setRightEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "rightEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setTopEdge(Lcom/google/android/material/shape/EdgeTreatment;)V
    .locals 0
    .param p1, "topEdge"    # Lcom/google/android/material/shape/EdgeTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    return-void
.end method

.method public setTopLeftCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "topLeftCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method

.method public setTopRightCorner(Lcom/google/android/material/shape/CornerTreatment;)V
    .locals 0
    .param p1, "topRightCorner"    # Lcom/google/android/material/shape/CornerTreatment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/shape/ShapePathModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    return-void
.end method
