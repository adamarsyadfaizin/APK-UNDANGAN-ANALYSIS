.class public Landroidx/core/os/OperationCanceledException;
.super Ljava/lang/RuntimeException;
.source "0050.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/core/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "The operation has been canceled."

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1
    .local v0, "0050.java:1":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
