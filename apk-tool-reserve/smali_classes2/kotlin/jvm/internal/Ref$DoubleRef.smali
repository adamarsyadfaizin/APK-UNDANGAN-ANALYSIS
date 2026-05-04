.class public final Lkotlin/jvm/internal/Ref$DoubleRef;
.super Ljava/lang/Object;
.source "0117.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/jvm/internal/Ref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleRef"
.end annotation


# instance fields
.field public element:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 1
    .local v0, "0117.java:1":V
    invoke-static {v0}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    return-object v0
.end method
