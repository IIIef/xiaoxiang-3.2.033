.class public final Lio/netty/channel/unix/Errors;
.super Ljava/lang/Object;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/unix/Errors$NativeConnectException;,
        Lio/netty/channel/unix/Errors$NativeIoException;
    }
.end annotation


# static fields
.field public static final ERRNO_EAGAIN_NEGATIVE:I

.field public static final ERRNO_EBADF_NEGATIVE:I

.field public static final ERRNO_ECONNRESET_NEGATIVE:I

.field public static final ERRNO_EINPROGRESS_NEGATIVE:I

.field public static final ERRNO_ENOENT_NEGATIVE:I

.field public static final ERRNO_ENOTCONN_NEGATIVE:I

.field public static final ERRNO_EPIPE_NEGATIVE:I

.field public static final ERRNO_EWOULDBLOCK_NEGATIVE:I

.field private static final ERRORS:[Ljava/lang/String;

.field public static final ERROR_EALREADY_NEGATIVE:I

.field public static final ERROR_ECONNREFUSED_NEGATIVE:I

.field public static final ERROR_EISCONN_NEGATIVE:I

.field public static final ERROR_ENETUNREACH_NEGATIVE:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoENOENT()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_ENOENT_NEGATIVE:I

    .line 38
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoENOTCONN()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_ENOTCONN_NEGATIVE:I

    .line 39
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEBADF()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EBADF_NEGATIVE:I

    .line 40
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEPIPE()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EPIPE_NEGATIVE:I

    .line 41
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoECONNRESET()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_ECONNRESET_NEGATIVE:I

    .line 42
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEAGAIN()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    .line 43
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEWOULDBLOCK()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    .line 44
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEINPROGRESS()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    .line 45
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorECONNREFUSED()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    .line 46
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorEISCONN()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERROR_EISCONN_NEGATIVE:I

    .line 47
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorEALREADY()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERROR_EALREADY_NEGATIVE:I

    .line 48
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorENETUNREACH()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERROR_ENETUNREACH_NEGATIVE:I

    const/16 v0, 0x200

    new-array v0, v0, [Ljava/lang/String;

    .line 57
    sput-object v0, Lio/netty/channel/unix/Errors;->ERRORS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    :goto_0
    sget-object v1, Lio/netty/channel/unix/Errors;->ERRORS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 91
    invoke-static {v0}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->strError(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lio/netty/channel/unix/Errors;->ERRORS:[Ljava/lang/String;

    return-object v0
.end method

.method public static ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq p1, v0, :cond_5

    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p2}, Lio/netty/channel/unix/Errors$NativeIoException;->expectedErr()I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 134
    sget p2, Lio/netty/channel/unix/Errors;->ERRNO_EBADF_NEGATIVE:I

    if-eq p1, p2, :cond_3

    .line 137
    sget p2, Lio/netty/channel/unix/Errors;->ERRNO_ENOTCONN_NEGATIVE:I

    if-eq p1, p2, :cond_2

    .line 140
    sget p2, Lio/netty/channel/unix/Errors;->ERRNO_ENOENT_NEGATIVE:I

    if-ne p1, p2, :cond_1

    .line 141
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    .line 146
    :cond_1
    invoke-static {p0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    throw p0

    .line 138
    :cond_2
    new-instance p0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {p0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw p0

    .line 135
    :cond_3
    throw p3

    .line 132
    :cond_4
    throw p2

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;
    .locals 0

    .line 116
    invoke-static {p0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object p0

    .line 117
    sget-object p1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Lio/netty/channel/unix/Errors$NativeIoException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public static newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;
    .locals 1

    .line 122
    new-instance v0, Lio/netty/channel/unix/Errors$NativeIoException;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/unix/Errors$NativeIoException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static throwConnectException(Ljava/lang/String;Lio/netty/channel/unix/Errors$NativeConnectException;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Lio/netty/channel/unix/Errors$NativeConnectException;->expectedErr()I

    move-result v0

    if-eq p2, v0, :cond_4

    .line 100
    sget p1, Lio/netty/channel/unix/Errors;->ERROR_EALREADY_NEGATIVE:I

    if-eq p2, p1, :cond_3

    .line 103
    sget p1, Lio/netty/channel/unix/Errors;->ERROR_ENETUNREACH_NEGATIVE:I

    if-eq p2, p1, :cond_2

    .line 106
    sget p1, Lio/netty/channel/unix/Errors;->ERROR_EISCONN_NEGATIVE:I

    if-eq p2, p1, :cond_1

    .line 109
    sget p1, Lio/netty/channel/unix/Errors;->ERRNO_ENOENT_NEGATIVE:I

    if-ne p2, p1, :cond_0

    .line 110
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0

    .line 112
    :cond_0
    new-instance p1, Ljava/net/ConnectException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(..) failed: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lio/netty/channel/unix/Errors;->ERRORS:[Ljava/lang/String;

    neg-int p2, p2

    aget-object p0, p0, p2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_1
    new-instance p0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {p0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw p0

    .line 104
    :cond_2
    new-instance p0, Ljava/net/NoRouteToHostException;

    invoke-direct {p0}, Ljava/net/NoRouteToHostException;-><init>()V

    throw p0

    .line 101
    :cond_3
    new-instance p0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {p0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw p0

    .line 98
    :cond_4
    throw p1
.end method
