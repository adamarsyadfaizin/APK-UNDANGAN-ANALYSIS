.class Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoreSpline"
.end annotation


# instance fields
.field start:J

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "currentTime"    # J

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;->type:Ljava/lang/String;

    iput-wide p2, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;->start:J

    return-void
.end method


# virtual methods
.method public setProperty(Landroidx/constraintlayout/core/motion/utils/TypedValues;F)V
    .locals 2
    .param p1, "widget"    # Landroidx/constraintlayout/core/motion/utils/TypedValues;
    .param p2, "t"    # F

    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;->type:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->getId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/utils/SplineSet$CoreSpline;->get(F)F

    move-result v1

    invoke-interface {p1, v0, v1}, Landroidx/constraintlayout/core/motion/utils/TypedValues;->setValue(IF)Z

    return-void
.end method
