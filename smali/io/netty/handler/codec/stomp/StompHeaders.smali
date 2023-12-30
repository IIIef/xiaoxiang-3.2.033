.class public interface abstract Lio/netty/handler/codec/stomp/StompHeaders;
.super Ljava/lang/Object;
.source "StompHeaders.java"

# interfaces
.implements Lio/netty/handler/codec/Headers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/codec/Headers<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lio/netty/handler/codec/stomp/StompHeaders;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCEPT_VERSION:Lio/netty/util/AsciiString;

.field public static final ACK:Lio/netty/util/AsciiString;

.field public static final CONTENT_LENGTH:Lio/netty/util/AsciiString;

.field public static final CONTENT_TYPE:Lio/netty/util/AsciiString;

.field public static final DESTINATION:Lio/netty/util/AsciiString;

.field public static final HEART_BEAT:Lio/netty/util/AsciiString;

.field public static final HOST:Lio/netty/util/AsciiString;

.field public static final ID:Lio/netty/util/AsciiString;

.field public static final LOGIN:Lio/netty/util/AsciiString;

.field public static final MESSAGE:Lio/netty/util/AsciiString;

.field public static final MESSAGE_ID:Lio/netty/util/AsciiString;

.field public static final PASSCODE:Lio/netty/util/AsciiString;

.field public static final RECEIPT:Lio/netty/util/AsciiString;

.field public static final RECEIPT_ID:Lio/netty/util/AsciiString;

.field public static final SERVER:Lio/netty/util/AsciiString;

.field public static final SESSION:Lio/netty/util/AsciiString;

.field public static final SUBSCRIPTION:Lio/netty/util/AsciiString;

.field public static final TRANSACTION:Lio/netty/util/AsciiString;

.field public static final VERSION:Lio/netty/util/AsciiString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "accept-version"

    .line 31
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->ACCEPT_VERSION:Lio/netty/util/AsciiString;

    const-string v0, "host"

    .line 32
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->HOST:Lio/netty/util/AsciiString;

    const-string v0, "login"

    .line 33
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->LOGIN:Lio/netty/util/AsciiString;

    const-string v0, "passcode"

    .line 34
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->PASSCODE:Lio/netty/util/AsciiString;

    const-string v0, "heart-beat"

    .line 35
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->HEART_BEAT:Lio/netty/util/AsciiString;

    const-string v0, "version"

    .line 36
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->VERSION:Lio/netty/util/AsciiString;

    const-string v0, "session"

    .line 37
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->SESSION:Lio/netty/util/AsciiString;

    const-string v0, "server"

    .line 38
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->SERVER:Lio/netty/util/AsciiString;

    const-string v0, "destination"

    .line 39
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->DESTINATION:Lio/netty/util/AsciiString;

    const-string v0, "id"

    .line 40
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->ID:Lio/netty/util/AsciiString;

    const-string v0, "ack"

    .line 41
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->ACK:Lio/netty/util/AsciiString;

    const-string v0, "transaction"

    .line 42
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->TRANSACTION:Lio/netty/util/AsciiString;

    const-string v0, "receipt"

    .line 43
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->RECEIPT:Lio/netty/util/AsciiString;

    const-string v0, "message-id"

    .line 44
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->MESSAGE_ID:Lio/netty/util/AsciiString;

    const-string v0, "subscription"

    .line 45
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->SUBSCRIPTION:Lio/netty/util/AsciiString;

    const-string v0, "receipt-id"

    .line 46
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->RECEIPT_ID:Lio/netty/util/AsciiString;

    const-string v0, "message"

    .line 47
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->MESSAGE:Lio/netty/util/AsciiString;

    const-string v0, "content-length"

    .line 48
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    const-string v0, "content-type"

    .line 49
    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/stomp/StompHeaders;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    return-void
.end method


# virtual methods
.method public abstract contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
.end method

.method public abstract getAllAsString(Ljava/lang/CharSequence;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;
.end method

.method public abstract iteratorAsString()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
