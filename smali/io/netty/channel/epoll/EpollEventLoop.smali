.class Lio/netty/channel/epoll/EpollEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "EpollEventLoop.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_SCHEDULED_TIMERFD_NS:J = 0x3b9ac9ffL

.field private static final WAKEN_UP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/channel/epoll/EpollEventLoop;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final allowGrowing:Z

.field private final channels:Lio/netty/util/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/channel/epoll/AbstractEpollChannel;",
            ">;"
        }
    .end annotation
.end field

.field private datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

.field private final epollFd:Lio/netty/channel/unix/FileDescriptor;

.field private final eventFd:Lio/netty/channel/unix/FileDescriptor;

.field private final events:Lio/netty/channel/epoll/EpollEventArray;

.field private volatile ioRatio:I

.field private iovArray:Lio/netty/channel/unix/IovArray;

.field private prevDeadlineNanos:J

.field private final selectNowSupplier:Lio/netty/util/IntSupplier;

.field private final selectStrategy:Lio/netty/channel/SelectStrategy;

.field private final timerFd:Lio/netty/channel/unix/FileDescriptor;

.field private volatile wakenUp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-class v0, Lio/netty/channel/epoll/EpollEventLoop;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "wakenUp"

    .line 47
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/EpollEventLoop;->WAKEN_UP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 52
    invoke-static {}, Lio/netty/channel/epoll/Epoll;->ensureAvailability()V

    return-void
.end method

.method constructor <init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ILio/netty/channel/SelectStrategy;Lio/netty/util/concurrent/RejectedExecutionHandler;)V
    .locals 7

    .line 84
    sget v4, Lio/netty/channel/epoll/EpollEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ZILio/netty/util/concurrent/RejectedExecutionHandler;)V

    .line 56
    invoke-static {}, Lio/netty/channel/epoll/EpollEventLoop;->nanoTime()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->prevDeadlineNanos:J

    .line 60
    new-instance p1, Lio/netty/util/collection/IntObjectHashMap;

    const/16 p2, 0x1000

    invoke-direct {p1, p2}, Lio/netty/util/collection/IntObjectHashMap;-><init>(I)V

    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 69
    new-instance p1, Lio/netty/channel/epoll/EpollEventLoop$1;

    invoke-direct {p1, p0}, Lio/netty/channel/epoll/EpollEventLoop$1;-><init>(Lio/netty/channel/epoll/EpollEventLoop;)V

    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    const/16 p1, 0x32

    .line 77
    iput p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I

    const-string p1, "strategy"

    .line 85
    invoke-static {p4, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/channel/SelectStrategy;

    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    if-nez p3, :cond_0

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->allowGrowing:Z

    .line 88
    new-instance p1, Lio/netty/channel/epoll/EpollEventArray;

    invoke-direct {p1, p2}, Lio/netty/channel/epoll/EpollEventArray;-><init>(I)V

    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->allowGrowing:Z

    .line 91
    new-instance p1, Lio/netty/channel/epoll/EpollEventArray;

    invoke-direct {p1, p3}, Lio/netty/channel/epoll/EpollEventArray;-><init>(I)V

    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    :goto_0
    const/4 p1, 0x0

    .line 98
    :try_start_0
    invoke-static {}, Lio/netty/channel/epoll/Native;->newEpollCreate()Lio/netty/channel/unix/FileDescriptor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object p2, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 99
    invoke-static {}, Lio/netty/channel/epoll/Native;->newEventFd()Lio/netty/channel/unix/FileDescriptor;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object p3, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    :try_start_3
    invoke-virtual {p2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result p4

    invoke-virtual {p3}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result p5

    sget v0, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    invoke-static {p4, p5, v0}, Lio/netty/channel/epoll/Native;->epollCtlAdd(III)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :try_start_4
    invoke-static {}, Lio/netty/channel/epoll/Native;->newTimerFd()Lio/netty/channel/unix/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :try_start_5
    invoke-virtual {p2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result p4

    invoke-virtual {p1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result p5

    sget v0, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    sget v1, Lio/netty/channel/epoll/Native;->EPOLLET:I

    or-int/2addr v0, v1

    invoke-static {p4, p5, v0}, Lio/netty/channel/epoll/Native;->epollCtlAdd(III)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catch_0
    move-exception p4

    .line 109
    :try_start_6
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to add timerFd filedescriptor to epoll"

    invoke-direct {p5, v0, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p5

    :catch_1
    move-exception p4

    .line 103
    new-instance p5, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to add eventFd filedescriptor to epoll"

    invoke-direct {p5, v0, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception p4

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_1

    :catchall_1
    move-exception p4

    move-object p3, p1

    move-object p1, p2

    move-object p2, p3

    goto :goto_1

    :catchall_2
    move-exception p4

    move-object p2, p1

    move-object p3, p2

    :goto_1
    if-eqz p1, :cond_1

    .line 116
    :try_start_7
    invoke-virtual {p1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    nop

    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    .line 123
    :try_start_8
    invoke-virtual {p3}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    nop

    :cond_2
    :goto_3
    if-eqz p2, :cond_3

    .line 130
    :try_start_9
    invoke-virtual {p2}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 136
    :catch_4
    :cond_3
    throw p4
.end method

.method static synthetic access$000(Lio/netty/channel/epoll/EpollEventLoop;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitNow()I

    move-result p0

    return p0
.end method

.method private closeAll()V
    .locals 5

    .line 379
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitNow()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :catch_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lio/netty/channel/epoll/AbstractEpollChannel;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 387
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 388
    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v4

    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v4, v3}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private epollBusyWait()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-static {v0, v1}, Lio/netty/channel/epoll/Native;->epollBusyWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;)I

    move-result v0

    return v0
.end method

.method private epollWait(Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->hasTasks()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitNow()I

    move-result p1

    return p1

    .line 246
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->deadlineNanos()J

    move-result-wide v0

    .line 247
    iget-wide v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->prevDeadlineNanos:J

    const/4 p1, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lio/netty/channel/epoll/EpollEventLoop;->delayNanos(J)J

    move-result-wide v2

    .line 252
    iput-wide v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->prevDeadlineNanos:J

    const-wide/32 v0, 0x3b9aca00

    .line 253
    div-long v4, v2, v0

    const-wide/32 v6, 0x7fffffff

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p1, v4

    int-to-long v4, p1

    mul-long v4, v4, v0

    sub-long/2addr v2, v4

    const-wide/32 v0, 0x3b9ac9ff

    .line 254
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 256
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    iget-object v3, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-static {v0, v2, v3, p1, v1}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;II)I

    move-result p1

    return p1
.end method

.method private epollWaitNow()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;II)I

    move-result v0

    return v0
.end method

.method private processReady(Lio/netty/channel/epoll/EpollEventArray;I)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_6

    .line 394
    invoke-virtual {p1, v0}, Lio/netty/channel/epoll/EpollEventArray;->fd(I)I

    move-result v1

    .line 395
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 397
    invoke-static {v1}, Lio/netty/channel/epoll/Native;->eventFdRead(I)V

    goto :goto_1

    .line 398
    :cond_0
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 400
    invoke-static {v1}, Lio/netty/channel/epoll/Native;->timerFdRead(I)V

    goto :goto_1

    .line 402
    :cond_1
    invoke-virtual {p1, v0}, Lio/netty/channel/epoll/EpollEventArray;->events(I)I

    move-result v2

    int-to-long v2, v2

    .line 404
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v4, v1}, Lio/netty/util/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/channel/epoll/AbstractEpollChannel;

    if-eqz v4, :cond_4

    .line 410
    invoke-virtual {v4}, Lio/netty/channel/epoll/AbstractEpollChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    check-cast v1, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    .line 420
    sget v4, Lio/netty/channel/epoll/Native;->EPOLLERR:I

    sget v5, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    or-int/2addr v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 422
    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollOutReady()V

    .line 430
    :cond_2
    sget v4, Lio/netty/channel/epoll/Native;->EPOLLERR:I

    sget v5, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    or-int/2addr v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v2

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    .line 432
    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInReady()V

    .line 438
    :cond_3
    sget v4, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-eqz v4, :cond_5

    .line 439
    invoke-virtual {v1}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollRdHupReady()V

    goto :goto_1

    .line 444
    :cond_4
    :try_start_0
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Lio/netty/channel/epoll/Native;->epollCtlDel(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method add(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    .line 177
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v1

    iget v2, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    invoke-static {v1, v0, v2}, Lio/netty/channel/epoll/Native;->epollCtlAdd(III)V

    .line 178
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1, v0, p1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method cleanDatagramPacketArray()Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .locals 1

    .line 155
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-direct {v0}, Lio/netty/channel/epoll/NativeDatagramPacketArray;-><init>()V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->clear()V

    .line 160
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    return-object v0
.end method

.method cleanIovArray()Lio/netty/channel/unix/IovArray;
    .locals 1

    .line 143
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lio/netty/channel/unix/IovArray;

    invoke-direct {v0}, Lio/netty/channel/unix/IovArray;-><init>()V

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->clear()V

    .line 148
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    return-object v0
.end method

.method protected cleanup()V
    .locals 4

    const/4 v0, 0x0

    .line 460
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 462
    :try_start_1
    sget-object v2, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to close the epoll fd."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :goto_0
    :try_start_2
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    .line 467
    :try_start_3
    sget-object v2, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to close the event fd."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    :goto_1
    :try_start_4
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v1

    .line 472
    :try_start_5
    sget-object v2, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to close the timer fd."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 476
    :goto_2
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    if-eqz v1, :cond_0

    .line 477
    invoke-virtual {v1}, Lio/netty/channel/unix/IovArray;->release()V

    .line 478
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 480
    :cond_0
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    if-eqz v1, :cond_1

    .line 481
    invoke-virtual {v1}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->release()V

    .line 482
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 484
    :cond_1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollEventArray;->free()V

    return-void

    .line 476
    :goto_3
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    if-eqz v2, :cond_2

    .line 477
    invoke-virtual {v2}, Lio/netty/channel/unix/IovArray;->release()V

    .line 478
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 480
    :cond_2
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    if-eqz v2, :cond_3

    .line 481
    invoke-virtual {v2}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->release()V

    .line 482
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 484
    :cond_3
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollEventArray;->free()V

    .line 485
    throw v1
.end method

.method public getIoRatio()I
    .locals 1

    .line 216
    iget v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I

    return v0
.end method

.method handleLoopException(Ljava/lang/Throwable;)V
    .locals 2

    .line 366
    sget-object v0, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Unexpected exception in the selector loop."

    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x3e8

    .line 371
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method modify(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    iget-object v1, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v1

    iget p1, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    invoke-static {v0, v1, p1}, Lio/netty/channel/epoll/Native;->epollCtlMod(III)V

    return-void
.end method

.method protected newTaskQueue(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 208
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue()Ljava/util/Queue;

    move-result-object p1

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue(I)Ljava/util/Queue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public registeredChannels()I
    .locals 1

    .line 232
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->size()I

    move-result v0

    return v0
.end method

.method remove(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/netty/channel/epoll/LinuxSocket;->intValue()I

    move-result v0

    .line 197
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v1, v0}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->fd()Lio/netty/channel/unix/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lio/netty/channel/epoll/Native;->epollCtlDel(II)V

    :cond_0
    return-void
.end method

.method protected run()V
    .locals 6

    .line 271
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->hasTasks()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lio/netty/channel/SelectStrategy;->calculateStrategy(Lio/netty/util/IntSupplier;Z)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_3

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 281
    :cond_1
    sget-object v0, Lio/netty/channel/epoll/EpollEventLoop;->WAKEN_UP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0, v1}, Lio/netty/channel/epoll/EpollEventLoop;->epollWait(Z)I

    move-result v0

    .line 311
    iget v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->wakenUp:I

    if-ne v1, v2, :cond_4

    .line 312
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v1

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lio/netty/channel/epoll/Native;->eventFdWrite(IJ)V

    goto :goto_1

    .line 277
    :cond_3
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollBusyWait()I

    move-result v0

    .line 318
    :cond_4
    :goto_1
    iget v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x64

    if-ne v1, v2, :cond_6

    if-lez v0, :cond_5

    .line 322
    :try_start_1
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-direct {p0, v1, v0}, Lio/netty/channel/epoll/EpollEventLoop;->processReady(Lio/netty/channel/epoll/EpollEventArray;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 326
    :try_start_2
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->runAllTasks()Z

    .line 327
    throw v0

    .line 326
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->runAllTasks()Z

    goto :goto_4

    .line 329
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lez v0, :cond_7

    .line 333
    :try_start_3
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-direct {p0, v4, v0}, Lio/netty/channel/epoll/EpollEventLoop;->processReady(Lio/netty/channel/epoll/EpollEventArray;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 337
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    rsub-int/lit8 v2, v1, 0x64

    int-to-long v2, v2

    mul-long v4, v4, v2

    int-to-long v1, v1

    .line 338
    div-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Lio/netty/channel/epoll/EpollEventLoop;->runAllTasks(J)Z

    .line 339
    throw v0

    .line 337
    :cond_7
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    rsub-int/lit8 v2, v1, 0x64

    int-to-long v2, v2

    mul-long v4, v4, v2

    int-to-long v1, v1

    .line 338
    div-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Lio/netty/channel/epoll/EpollEventLoop;->runAllTasks(J)Z

    .line 341
    :goto_4
    iget-boolean v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->allowGrowing:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-virtual {v1}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 343
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollEventArray;->increase()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 346
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 350
    :cond_8
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->closeAll()V

    .line 352
    invoke-virtual {p0}, Lio/netty/channel/epoll/EpollEventLoop;->confirmShutdown()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_0

    return-void

    :catchall_3
    move-exception v0

    .line 357
    invoke-virtual {p0, v0}, Lio/netty/channel/epoll/EpollEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public setIoRatio(I)V
    .locals 3

    if-lez p1, :cond_0

    const/16 v0, 0x64

    if-gt p1, v0, :cond_0

    .line 227
    iput p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I

    return-void

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioRatio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 0 < ioRatio <= 100)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected wakeup(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 165
    sget-object p1, Lio/netty/channel/epoll/EpollEventLoop;->WAKEN_UP_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    invoke-virtual {p1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result p1

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lio/netty/channel/epoll/Native;->eventFdWrite(IJ)V

    :cond_0
    return-void
.end method
