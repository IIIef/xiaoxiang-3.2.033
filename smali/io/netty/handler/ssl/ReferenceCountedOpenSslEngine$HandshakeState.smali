.class final enum Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
.super Ljava/lang/Enum;
.source "ReferenceCountedOpenSslEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HandshakeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field public static final enum FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field public static final enum NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field public static final enum STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

.field public static final enum STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 150
    new-instance v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->NOT_STARTED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 154
    new-instance v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const-string v3, "STARTED_IMPLICITLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_IMPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 158
    new-instance v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const-string v5, "STARTED_EXPLICITLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->STARTED_EXPLICITLY:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    .line 162
    new-instance v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const-string v7, "FINISHED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->FINISHED:Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 146
    sput-object v7, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->$VALUES:[Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .locals 1

    .line 146
    const-class v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    return-object p0
.end method

.method public static values()[Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;
    .locals 1

    .line 146
    sget-object v0, Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->$VALUES:[Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    invoke-virtual {v0}, [Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/handler/ssl/ReferenceCountedOpenSslEngine$HandshakeState;

    return-object v0
.end method
