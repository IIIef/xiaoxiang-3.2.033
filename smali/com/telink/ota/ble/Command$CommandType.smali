.class public final enum Lcom/telink/ota/ble/Command$CommandType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telink/ota/ble/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telink/ota/ble/Command$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telink/ota/ble/Command$CommandType;

.field public static final enum DISABLE_NOTIFY:Lcom/telink/ota/ble/Command$CommandType;

.field public static final enum ENABLE_NOTIFY:Lcom/telink/ota/ble/Command$CommandType;

.field public static final enum READ:Lcom/telink/ota/ble/Command$CommandType;

.field public static final enum READ_DESCRIPTOR:Lcom/telink/ota/ble/Command$CommandType;

.field public static final enum WRITE:Lcom/telink/ota/ble/Command$CommandType;

.field public static final enum WRITE_NO_RESPONSE:Lcom/telink/ota/ble/Command$CommandType;


# direct methods
.method private static synthetic $values()[Lcom/telink/ota/ble/Command$CommandType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/telink/ota/ble/Command$CommandType;

    .line 68
    sget-object v1, Lcom/telink/ota/ble/Command$CommandType;->READ:Lcom/telink/ota/ble/Command$CommandType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/ble/Command$CommandType;->READ_DESCRIPTOR:Lcom/telink/ota/ble/Command$CommandType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/ble/Command$CommandType;->WRITE:Lcom/telink/ota/ble/Command$CommandType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/ble/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/telink/ota/ble/Command$CommandType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/ble/Command$CommandType;->ENABLE_NOTIFY:Lcom/telink/ota/ble/Command$CommandType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/telink/ota/ble/Command$CommandType;->DISABLE_NOTIFY:Lcom/telink/ota/ble/Command$CommandType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Lcom/telink/ota/ble/Command$CommandType;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telink/ota/ble/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telink/ota/ble/Command$CommandType;->READ:Lcom/telink/ota/ble/Command$CommandType;

    new-instance v0, Lcom/telink/ota/ble/Command$CommandType;

    const-string v1, "READ_DESCRIPTOR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/telink/ota/ble/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telink/ota/ble/Command$CommandType;->READ_DESCRIPTOR:Lcom/telink/ota/ble/Command$CommandType;

    new-instance v0, Lcom/telink/ota/ble/Command$CommandType;

    const-string v1, "WRITE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/telink/ota/ble/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telink/ota/ble/Command$CommandType;->WRITE:Lcom/telink/ota/ble/Command$CommandType;

    new-instance v0, Lcom/telink/ota/ble/Command$CommandType;

    const-string v1, "WRITE_NO_RESPONSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/telink/ota/ble/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telink/ota/ble/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/telink/ota/ble/Command$CommandType;

    new-instance v0, Lcom/telink/ota/ble/Command$CommandType;

    const-string v1, "ENABLE_NOTIFY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/telink/ota/ble/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telink/ota/ble/Command$CommandType;->ENABLE_NOTIFY:Lcom/telink/ota/ble/Command$CommandType;

    new-instance v0, Lcom/telink/ota/ble/Command$CommandType;

    const-string v1, "DISABLE_NOTIFY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/telink/ota/ble/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telink/ota/ble/Command$CommandType;->DISABLE_NOTIFY:Lcom/telink/ota/ble/Command$CommandType;

    .line 68
    invoke-static {}, Lcom/telink/ota/ble/Command$CommandType;->$values()[Lcom/telink/ota/ble/Command$CommandType;

    move-result-object v0

    sput-object v0, Lcom/telink/ota/ble/Command$CommandType;->$VALUES:[Lcom/telink/ota/ble/Command$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telink/ota/ble/Command$CommandType;
    .locals 1

    .line 68
    const-class v0, Lcom/telink/ota/ble/Command$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telink/ota/ble/Command$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/telink/ota/ble/Command$CommandType;
    .locals 1

    .line 68
    sget-object v0, Lcom/telink/ota/ble/Command$CommandType;->$VALUES:[Lcom/telink/ota/ble/Command$CommandType;

    invoke-virtual {v0}, [Lcom/telink/ota/ble/Command$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telink/ota/ble/Command$CommandType;

    return-object v0
.end method
