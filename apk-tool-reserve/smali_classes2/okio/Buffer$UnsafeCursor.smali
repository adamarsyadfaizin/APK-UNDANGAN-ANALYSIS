.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "01A5.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -Util.kt\nokio/-Util\n*L\n1#1,1019:1\n1#2:1020\n75#3:1021\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n941#1:1021\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u000e\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u0008J\u0006\u0010\u0014\u001a\u00020\u0008J\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nJ\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Buffer$UnsafeCursor;",
        "Ljava/io/Closeable;",
        "()V",
        "buffer",
        "Lokio/Buffer;",
        "data",
        "",
        "end",
        "",
        "offset",
        "",
        "readWrite",
        "",
        "segment",
        "Lokio/Segment;",
        "start",
        "close",
        "",
        "expandBuffer",
        "minByteCount",
        "next",
        "resizeBuffer",
        "newSize",
        "seek",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field public buffer:Lokio/Buffer;

.field public data:[B

.field public end:I

.field public offset:J

.field public readWrite:Z

.field private segment:Lokio/Segment;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lokio/Buffer;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    move-object v1, v0

    check-cast v1, Lokio/Segment;

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    move-object v1, v0

    check-cast v1, [B

    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v0, -0x1

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v0, p0, Lokio/Buffer$UnsafeCursor;->end:I

    return-void

    :cond_1
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final expandBuffer(I)J
    .locals 8
    .param p1, "minByteCount"    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    const/16 v2, 0x2000

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v0, p1}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v1

    iget v5, v1, Lokio/Segment;->limit:I

    rsub-int v5, v5, 0x2000

    iput v2, v1, Lokio/Segment;->limit:I

    int-to-long v6, v5

    add-long/2addr v6, v3

    invoke-virtual {v0, v6, v7}, Lokio/Buffer;->setSize$okio(J)V

    iput-object v1, p0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide v3, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v6, v1, Lokio/Segment;->data:[B

    iput-object v6, p0, Lokio/Buffer$UnsafeCursor;->data:[B

    rsub-int v6, v5, 0x2000

    iput v6, p0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    int-to-long v6, v5

    return-wide v6

    :cond_2
    const/4 v1, 0x0

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "expandBuffer() only permitted for read/write buffers"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_3
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_4
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount > Segment.SIZE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_5
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minByteCount <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final next()I
    .locals 4

    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->offset:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v3, p0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    nop

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no more bytes"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final resizeBuffer(J)J
    .locals 15
    .param p1, "newSize"    # J

    move-object v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v3, :cond_8

    iget-boolean v4, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v4

    cmp-long v6, v1, v4

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    if-gtz v6, :cond_4

    cmp-long v6, v1, v8

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_3

    sub-long v6, v4, v1

    :goto_1
    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    iget-object v10, v3, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v10, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v11, v10, Lokio/Segment;->limit:I

    iget v12, v10, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    int-to-long v12, v11

    cmp-long v12, v12, v6

    if-gtz v12, :cond_1

    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v12

    iput-object v12, v3, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    int-to-long v12, v11

    sub-long/2addr v6, v12

    nop

    goto :goto_1

    :cond_1
    iget v8, v10, Lokio/Segment;->limit:I

    long-to-int v9, v6

    sub-int/2addr v8, v9

    iput v8, v10, Lokio/Segment;->limit:I

    nop

    :cond_2
    const/4 v8, 0x0

    move-object v9, v8

    check-cast v9, Lokio/Segment;

    iput-object v8, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    move-object v9, v8

    check-cast v9, [B

    iput-object v8, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    const/4 v8, -0x1

    iput v8, v0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v8, v0, Lokio/Buffer$UnsafeCursor;->end:I

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newSize < 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Throwable;

    throw v7

    :cond_4
    cmp-long v6, v1, v4

    if-lez v6, :cond_6

    const/4 v6, 0x1

    sub-long v10, v1, v4

    :goto_2
    cmp-long v12, v10, v8

    if-lez v12, :cond_6

    invoke-virtual {v3, v7}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v12

    iget v13, v12, Lokio/Segment;->limit:I

    rsub-int v13, v13, 0x2000

    const/4 v14, 0x0

    int-to-long v7, v13

    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    iget v8, v12, Lokio/Segment;->limit:I

    add-int/2addr v8, v7

    iput v8, v12, Lokio/Segment;->limit:I

    int-to-long v8, v7

    sub-long/2addr v10, v8

    if-eqz v6, :cond_5

    iput-object v12, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide v4, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget-object v8, v12, Lokio/Segment;->data:[B

    iput-object v8, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    iget v8, v12, Lokio/Segment;->limit:I

    sub-int/2addr v8, v7

    iput v8, v0, Lokio/Buffer$UnsafeCursor;->start:I

    iget v8, v12, Lokio/Segment;->limit:I

    iput v8, v0, Lokio/Buffer$UnsafeCursor;->end:I

    const/4 v6, 0x0

    :cond_5
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    nop

    invoke-virtual {v3, v1, v2}, Lokio/Buffer;->setSize$okio(J)V

    return-wide v4

    :cond_7
    const/4 v4, 0x0

    nop

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "resizeBuffer() only permitted for read/write buffers"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    :cond_8
    const/4 v3, 0x0

    nop

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not attached to a buffer"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method

.method public final seek(J)I
    .locals 17
    .param p1, "offset"    # J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lokio/Buffer$UnsafeCursor;->buffer:Lokio/Buffer;

    if-eqz v3, :cond_9

    const/4 v4, -0x1

    int-to-long v5, v4

    cmp-long v5, v1, v5

    if-ltz v5, :cond_8

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gtz v5, :cond_8

    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_7

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    iget-object v8, v3, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v9, v3, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v10, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    if-eqz v10, :cond_2

    iget-wide v11, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    iget v13, v0, Lokio/Buffer$UnsafeCursor;->start:I

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v10, v10, Lokio/Segment;->pos:I

    sub-int/2addr v13, v10

    int-to-long v13, v13

    sub-long/2addr v11, v13

    cmp-long v10, v11, v1

    if-lez v10, :cond_1

    move-wide v6, v11

    iget-object v9, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    goto :goto_0

    :cond_1
    move-wide v4, v11

    iget-object v8, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    :cond_2
    :goto_0
    nop

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    sub-long v13, v6, v1

    sub-long v15, v1, v4

    cmp-long v13, v13, v15

    if-lez v13, :cond_3

    move-object v10, v8

    move-wide v11, v4

    :goto_1
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v13, v10, Lokio/Segment;->limit:I

    iget v14, v10, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    int-to-long v13, v13

    add-long/2addr v13, v11

    cmp-long v13, v1, v13

    if-ltz v13, :cond_4

    iget v13, v10, Lokio/Segment;->limit:I

    iget v14, v10, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    int-to-long v13, v13

    add-long/2addr v11, v13

    iget-object v10, v10, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_1

    :cond_3
    move-object v10, v9

    move-wide v11, v6

    :goto_2
    cmp-long v13, v11, v1

    if-lez v13, :cond_4

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v10, v10, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v13, v10, Lokio/Segment;->limit:I

    iget v14, v10, Lokio/Segment;->pos:I

    sub-int/2addr v13, v14

    int-to-long v13, v13

    sub-long/2addr v11, v13

    goto :goto_2

    :cond_4
    nop

    iget-boolean v13, v0, Lokio/Buffer$UnsafeCursor;->readWrite:Z

    if-eqz v13, :cond_6

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v13, v10, Lokio/Segment;->shared:Z

    if-eqz v13, :cond_6

    invoke-virtual {v10}, Lokio/Segment;->unsharedCopy()Lokio/Segment;

    move-result-object v13

    iget-object v14, v3, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v14, v10, :cond_5

    iput-object v13, v3, Lokio/Buffer;->head:Lokio/Segment;

    :cond_5
    invoke-virtual {v10, v13}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v10

    iget-object v14, v10, Lokio/Segment;->prev:Lokio/Segment;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lokio/Segment;->pop()Lokio/Segment;

    :cond_6
    iput-object v10, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v13, v10, Lokio/Segment;->data:[B

    iput-object v13, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    iget v13, v10, Lokio/Segment;->pos:I

    sub-long v14, v1, v11

    long-to-int v14, v14

    add-int/2addr v13, v14

    iput v13, v0, Lokio/Buffer$UnsafeCursor;->start:I

    iget v13, v10, Lokio/Segment;->limit:I

    iput v13, v0, Lokio/Buffer$UnsafeCursor;->end:I

    iget v14, v0, Lokio/Buffer$UnsafeCursor;->start:I

    sub-int/2addr v13, v14

    return v13

    :cond_7
    :goto_3
    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Lokio/Segment;

    iput-object v5, v0, Lokio/Buffer$UnsafeCursor;->segment:Lokio/Segment;

    iput-wide v1, v0, Lokio/Buffer$UnsafeCursor;->offset:J

    move-object v6, v5

    check-cast v6, [B

    iput-object v5, v0, Lokio/Buffer$UnsafeCursor;->data:[B

    iput v4, v0, Lokio/Buffer$UnsafeCursor;->start:I

    iput v4, v0, Lokio/Buffer$UnsafeCursor;->end:I

    return v4

    :cond_8
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v6, "offset=%s > size=%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1
    .local v0, "01A5.java:1":V
    invoke-static {v5}, Lmt/LogFA13D2;->a(Ljava/lang/Object;)V

    invoke-static {v5}, Lmt/LogE30A28;->a(Ljava/lang/Object;)V

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    :cond_9
    const/4 v3, 0x0

    nop

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "not attached to a buffer"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method
