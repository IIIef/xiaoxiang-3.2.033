.class public Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;
.super Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;
.source "MpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueueL3Pad;-><init>(I)V

    return-void
.end method


# virtual methods
.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;)I"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I

    move-result p1

    return p1
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;I)I"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 501
    iget-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 502
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_1

    int-to-long v6, v5

    add-long/2addr v6, v3

    .line 507
    invoke-static {v6, v7, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v8

    .line 508
    invoke-static {v0, v8, v9}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_0

    return v5

    :cond_0
    const/4 v11, 0x0

    .line 513
    invoke-static {v0, v8, v9, v11}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 514
    invoke-virtual {p0, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    .line 515
    invoke-interface {p1, v10}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public drain(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 564
    iget-object v1, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 565
    iget-wide v2, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 566
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 569
    :goto_0
    invoke-interface/range {p3 .. p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0x1000

    if-ge v8, v9, :cond_1

    .line 573
    invoke-static {v4, v5, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v9

    .line 574
    invoke-static {v1, v9, v10}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_0

    move-object/from16 v12, p2

    .line 577
    invoke-interface {v12, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v7

    move-object/from16 v9, p1

    goto :goto_2

    :cond_0
    move-object/from16 v12, p2

    const-wide/16 v13, 0x1

    add-long/2addr v4, v13

    const/4 v7, 0x0

    .line 582
    invoke-static {v1, v9, v10, v7}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    .line 583
    invoke-virtual {p0, v4, v5}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    move-object/from16 v9, p1

    .line 584
    invoke-interface {v9, v11}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Consumer;->accept(Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p1

    move-object/from16 v12, p2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final failFastOffer(Ljava/lang/Object;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 320
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 324
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v6

    .line 325
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_1

    .line 328
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v8

    add-long/2addr v8, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_0

    const/4 p1, 0x1

    return p1

    .line 337
    :cond_0
    invoke-virtual {p0, v8, v9}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    :cond_1
    add-long/2addr v2, v6

    .line 342
    invoke-virtual {p0, v6, v7, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p1, -0x1

    return p1

    .line 348
    :cond_2
    invoke-static {v6, v7, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v0

    .line 349
    iget-object v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v2, v0, v1, p1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;)I"
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->capacity()I

    move-result v0

    const-wide/16 v1, 0x0

    .line 486
    :cond_0
    sget v3, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v3

    if-nez v3, :cond_1

    long-to-int p1, v1

    return p1

    :cond_1
    int-to-long v3, v3

    add-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    long-to-int p1, v1

    return p1
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;I)I"
        }
    .end annotation

    move-object v0, p0

    .line 523
    iget-wide v1, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    .line 525
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v5

    .line 530
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v7

    sub-long v9, v5, v7

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-gtz v14, :cond_2

    .line 534
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v5

    add-long/2addr v5, v3

    sub-long v9, v5, v7

    cmp-long v14, v9, v12

    if-gtz v14, :cond_1

    return v11

    .line 544
    :cond_1
    invoke-virtual {p0, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    :cond_2
    long-to-int v10, v9

    move/from16 v9, p2

    .line 547
    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-long v12, v10

    add-long/2addr v12, v7

    .line 549
    invoke-virtual {p0, v7, v8, v12, v13}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 551
    iget-object v3, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    :goto_0
    if-ge v11, v10, :cond_3

    int-to-long v4, v11

    add-long/2addr v4, v7

    .line 555
    invoke-static {v4, v5, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v4

    .line 556
    invoke-interface/range {p1 .. p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return v10
.end method

.method public fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier<",
            "TE;>;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;",
            "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    .line 593
    :goto_0
    invoke-interface {p3}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$ExitCondition;->keepRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    sget v2, Lio/netty/util/internal/shaded/org/jctools/util/PortableJvmInfo;->RECOMENDED_OFFER_BATCH:I

    invoke-virtual {p0, p1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->fill(Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$Supplier;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 597
    invoke-interface {p2, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue$WaitStrategy;->idle(I)I

    move-result v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 271
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-wide v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 276
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v2

    .line 280
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v2

    if-ltz v8, :cond_2

    .line 283
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v2

    add-long/2addr v2, v0

    add-long/2addr v2, v6

    cmp-long v8, v4, v2

    if-ltz v8, :cond_1

    const/4 p1, 0x0

    return p1

    .line 294
    :cond_1
    invoke-virtual {p0, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    :cond_2
    add-long/2addr v6, v4

    .line 298
    invoke-virtual {p0, v4, v5, v6, v7}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    invoke-static {v4, v5, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v0

    .line 306
    iget-object v2, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    invoke-static {v2, v0, v1, p1}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public offerIfBelowThreshold(Ljava/lang/Object;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 214
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-wide v1, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    .line 219
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerLimit()J

    move-result-wide v7

    .line 223
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v9

    sub-long v11, v7, v9

    sub-long v11, v5, v11

    move/from16 v13, p2

    int-to-long v14, v13

    cmp-long v16, v11, v14

    if-ltz v16, :cond_1

    .line 228
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvConsumerIndex()J

    move-result-wide v7

    sub-long v11, v9, v7

    cmp-long v16, v11, v14

    if-ltz v16, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-long/2addr v7, v5

    .line 240
    invoke-virtual {v0, v7, v8}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soProducerLimit(J)V

    :cond_1
    add-long v11, v9, v3

    .line 244
    invoke-virtual {v0, v9, v10, v11, v12}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->casProducerIndex(JJ)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 251
    invoke-static {v9, v10, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v1

    .line 252
    iget-object v3, v0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    move-object/from16 v9, p1

    invoke-static {v3, v1, v2, v9}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->soElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    move-object/from16 v9, p1

    goto :goto_0
.end method

.method public peek()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 413
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 414
    invoke-virtual {p0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v3

    .line 415
    invoke-static {v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 423
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-eqz v7, :cond_1

    .line 427
    :cond_0
    invoke-static {v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    :goto_0
    return-object v5
.end method

.method public poll()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v0

    .line 366
    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v2

    .line 368
    iget-object v4, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 371
    invoke-static {v4, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 379
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lvProducerIndex()J

    move-result-wide v7

    cmp-long v5, v0, v7

    if-eqz v5, :cond_1

    .line 383
    :cond_0
    invoke-static {v4, v2, v3}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    return-object v6

    .line 393
    :cond_2
    :goto_0
    invoke-static {v4, v2, v3, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 394
    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    return-object v5
.end method

.method public relaxedOffer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 442
    invoke-virtual {p0, p1}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public relaxedPeek()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 468
    iget-wide v1, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->mask:J

    .line 469
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v3

    .line 470
    invoke-static {v3, v4, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public relaxedPoll()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->buffer:[Ljava/lang/Object;

    .line 449
    invoke-virtual {p0}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->lpConsumerIndex()J

    move-result-wide v1

    .line 450
    invoke-virtual {p0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->calcElementOffset(J)J

    move-result-wide v3

    .line 453
    invoke-static {v0, v3, v4}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->lvElement([Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    .line 459
    :cond_0
    invoke-static {v0, v3, v4, v6}, Lio/netty/util/internal/shaded/org/jctools/util/UnsafeRefArrayAccess;->spElement([Ljava/lang/Object;JLjava/lang/Object;)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 460
    invoke-virtual {p0, v1, v2}, Lio/netty/util/internal/shaded/org/jctools/queues/MpscArrayQueue;->soConsumerIndex(J)V

    return-object v5
.end method
