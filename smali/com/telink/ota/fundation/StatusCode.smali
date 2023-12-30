.class public final enum Lcom/telink/ota/fundation/StatusCode;
.super Ljava/lang/Enum;
.source "StatusCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telink/ota/fundation/StatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telink/ota/fundation/StatusCode;

.field public static final enum BUSY:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_BATTERY_CHECK_ERR:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_CHARACTERISTIC_NOT_FOUND:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_CONNECTION_INTERRUPT:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_FLOW_TIMEOUT:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_PACKET_SENT_ERR:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_PACKET_SENT_TIMEOUT:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_PARAMS_ERR:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_RECONNECT_ERR:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_SERVICE_NOT_FOUND:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_UNCONNECTED:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum FAIL_VERSION_COMPARE_ERR:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum REBOOTING:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum STARTED:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum STOPPED:Lcom/telink/ota/fundation/StatusCode;

.field public static final enum SUCCESS:Lcom/telink/ota/fundation/StatusCode;


# instance fields
.field private final code:I

.field private final desc:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/telink/ota/fundation/StatusCode;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/telink/ota/fundation/StatusCode;

    .line 3
    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->SUCCESS:Lcom/telink/ota/fundation/StatusCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->STARTED:Lcom/telink/ota/fundation/StatusCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->STOPPED:Lcom/telink/ota/fundation/StatusCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->BUSY:Lcom/telink/ota/fundation/StatusCode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->REBOOTING:Lcom/telink/ota/fundation/StatusCode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_PARAMS_ERR:Lcom/telink/ota/fundation/StatusCode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_CONNECTION_INTERRUPT:Lcom/telink/ota/fundation/StatusCode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_BATTERY_CHECK_ERR:Lcom/telink/ota/fundation/StatusCode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_VERSION_COMPARE_ERR:Lcom/telink/ota/fundation/StatusCode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_PACKET_SENT_ERR:Lcom/telink/ota/fundation/StatusCode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_PACKET_SENT_TIMEOUT:Lcom/telink/ota/fundation/StatusCode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_FLOW_TIMEOUT:Lcom/telink/ota/fundation/StatusCode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_RECONNECT_ERR:Lcom/telink/ota/fundation/StatusCode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_UNCONNECTED:Lcom/telink/ota/fundation/StatusCode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_SERVICE_NOT_FOUND:Lcom/telink/ota/fundation/StatusCode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->FAIL_CHARACTERISTIC_NOT_FOUND:Lcom/telink/ota/fundation/StatusCode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const-string v3, "OTA success"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->SUCCESS:Lcom/telink/ota/fundation/StatusCode;

    .line 13
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    const-string v3, "OTA started"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->STARTED:Lcom/telink/ota/fundation/StatusCode;

    .line 18
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "STOPPED"

    const/4 v2, 0x2

    const-string v3, "OTA stopped"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->STOPPED:Lcom/telink/ota/fundation/StatusCode;

    .line 24
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "BUSY"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-string v4, "OTA busy"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->BUSY:Lcom/telink/ota/fundation/StatusCode;

    .line 29
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "REBOOTING"

    const/4 v2, 0x5

    const-string v4, "OTA rebooting"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->REBOOTING:Lcom/telink/ota/fundation/StatusCode;

    .line 34
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_PARAMS_ERR"

    const/16 v3, 0x10

    const-string v4, "OTA fail: params err"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_PARAMS_ERR:Lcom/telink/ota/fundation/StatusCode;

    .line 39
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_CONNECTION_INTERRUPT"

    const/4 v2, 0x6

    const/16 v3, 0x11

    const-string v4, "OTA fail: connection interrupt"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_CONNECTION_INTERRUPT:Lcom/telink/ota/fundation/StatusCode;

    .line 44
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_BATTERY_CHECK_ERR"

    const/4 v2, 0x7

    const/16 v3, 0x12

    const-string v4, "OTA fail: battery check err"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_BATTERY_CHECK_ERR:Lcom/telink/ota/fundation/StatusCode;

    .line 49
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_VERSION_COMPARE_ERR"

    const/16 v2, 0x8

    const/16 v3, 0x13

    const-string v4, "OTA fail: version compare err"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_VERSION_COMPARE_ERR:Lcom/telink/ota/fundation/StatusCode;

    .line 54
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_PACKET_SENT_ERR"

    const/16 v2, 0x9

    const/16 v3, 0x14

    const-string v4, "OTA fail: packet sent err"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_PACKET_SENT_ERR:Lcom/telink/ota/fundation/StatusCode;

    .line 59
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_PACKET_SENT_TIMEOUT"

    const/16 v2, 0xa

    const/16 v3, 0x15

    const-string v4, "OTA fail: packet sent timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_PACKET_SENT_TIMEOUT:Lcom/telink/ota/fundation/StatusCode;

    .line 64
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_FLOW_TIMEOUT"

    const/16 v2, 0xb

    const/16 v3, 0x16

    const-string v4, "OTA fail: flow timeout"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_FLOW_TIMEOUT:Lcom/telink/ota/fundation/StatusCode;

    .line 69
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_RECONNECT_ERR"

    const/16 v2, 0xc

    const/16 v3, 0x17

    const-string v4, "OTA fail: reconnect err"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_RECONNECT_ERR:Lcom/telink/ota/fundation/StatusCode;

    .line 74
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_UNCONNECTED"

    const/16 v2, 0xd

    const/16 v3, 0x18

    const-string v4, "OTA fail: device not connected"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_UNCONNECTED:Lcom/telink/ota/fundation/StatusCode;

    .line 79
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_SERVICE_NOT_FOUND"

    const/16 v2, 0xe

    const/16 v3, 0x19

    const-string v4, "OTA fail: service not found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_SERVICE_NOT_FOUND:Lcom/telink/ota/fundation/StatusCode;

    .line 84
    new-instance v0, Lcom/telink/ota/fundation/StatusCode;

    const-string v1, "FAIL_CHARACTERISTIC_NOT_FOUND"

    const/16 v2, 0xf

    const/16 v3, 0x1a

    const-string v4, "OTA fail: characteristic not found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/telink/ota/fundation/StatusCode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->FAIL_CHARACTERISTIC_NOT_FOUND:Lcom/telink/ota/fundation/StatusCode;

    .line 3
    invoke-static {}, Lcom/telink/ota/fundation/StatusCode;->$values()[Lcom/telink/ota/fundation/StatusCode;

    move-result-object v0

    sput-object v0, Lcom/telink/ota/fundation/StatusCode;->$VALUES:[Lcom/telink/ota/fundation/StatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput p3, p0, Lcom/telink/ota/fundation/StatusCode;->code:I

    .line 91
    iput-object p4, p0, Lcom/telink/ota/fundation/StatusCode;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telink/ota/fundation/StatusCode;
    .locals 1

    .line 3
    const-class v0, Lcom/telink/ota/fundation/StatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telink/ota/fundation/StatusCode;

    return-object p0
.end method

.method public static values()[Lcom/telink/ota/fundation/StatusCode;
    .locals 1

    .line 3
    sget-object v0, Lcom/telink/ota/fundation/StatusCode;->$VALUES:[Lcom/telink/ota/fundation/StatusCode;

    invoke-virtual {v0}, [Lcom/telink/ota/fundation/StatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telink/ota/fundation/StatusCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/telink/ota/fundation/StatusCode;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/telink/ota/fundation/StatusCode;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/telink/ota/fundation/StatusCode;->isFailed()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/telink/ota/fundation/StatusCode;->code:I

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->SUCCESS:Lcom/telink/ota/fundation/StatusCode;

    iget v1, v1, Lcom/telink/ota/fundation/StatusCode;->code:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/telink/ota/fundation/StatusCode;->STOPPED:Lcom/telink/ota/fundation/StatusCode;

    iget v1, v1, Lcom/telink/ota/fundation/StatusCode;->code:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFailed()Z
    .locals 2

    .line 106
    iget v0, p0, Lcom/telink/ota/fundation/StatusCode;->code:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
