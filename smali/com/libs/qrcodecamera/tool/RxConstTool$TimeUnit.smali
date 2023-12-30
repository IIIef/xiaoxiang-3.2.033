.class public final enum Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;
.super Ljava/lang/Enum;
.source "RxConstTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/libs/qrcodecamera/tool/RxConstTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

.field public static final enum DAY:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

.field public static final enum HOUR:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

.field public static final enum MIN:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

.field public static final enum MSEC:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

.field public static final enum SEC:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;


# direct methods
.method private static synthetic $values()[Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    .line 131
    sget-object v1, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->MSEC:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->SEC:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->MIN:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->HOUR:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->DAY:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 132
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const-string v1, "MSEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->MSEC:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    .line 133
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const-string v1, "SEC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->SEC:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    .line 134
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const-string v1, "MIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->MIN:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    .line 135
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const-string v1, "HOUR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->HOUR:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    .line 136
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    const-string v1, "DAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->DAY:Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    .line 131
    invoke-static {}, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->$values()[Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    move-result-object v0

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->$VALUES:[Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;
    .locals 1

    .line 131
    const-class v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    return-object p0
.end method

.method public static values()[Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;
    .locals 1

    .line 131
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->$VALUES:[Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    invoke-virtual {v0}, [Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/libs/qrcodecamera/tool/RxConstTool$TimeUnit;

    return-object v0
.end method
