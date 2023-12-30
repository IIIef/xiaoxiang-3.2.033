.class public final enum Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
.super Ljava/lang/Enum;
.source "WebSocketVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/codec/http/websocketx/WebSocketVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum UNKNOWN:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

.field public static final enum V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 28
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->UNKNOWN:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 34
    new-instance v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v3, "V00"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 40
    new-instance v3, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v5, "V07"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 46
    new-instance v5, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v7, "V08"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    .line 53
    new-instance v7, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const-string v9, "V13"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 27
    sput-object v9, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->$VALUES:[Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    .line 27
    const-class v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/codec/http/websocketx/WebSocketVersion;
    .locals 1

    .line 27
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->$VALUES:[Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    invoke-virtual {v0}, [Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    return-object v0
.end method


# virtual methods
.method public toHttpHeaderValue()Ljava/lang/String;
    .locals 3

    .line 59
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V00:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V07:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_1

    const-string v0, "7"

    return-object v0

    .line 65
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V08:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_2

    const-string v0, "8"

    return-object v0

    .line 68
    :cond_2
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketVersion;->V13:Lio/netty/handler/codec/http/websocketx/WebSocketVersion;

    if-ne p0, v0, :cond_3

    const-string v0, "13"

    return-object v0

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown web socket version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
