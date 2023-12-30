.class public final enum Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;
.super Ljava/lang/Enum;
.source "RxConstTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/libs/qrcodecamera/tool/RxConstTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

.field public static final enum BYTE:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

.field public static final enum GB:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

.field public static final enum KB:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

.field public static final enum MB:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;


# direct methods
.method private static synthetic $values()[Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    .line 124
    sget-object v1, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->BYTE:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->KB:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->MB:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->GB:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 125
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->BYTE:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    .line 126
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    const-string v1, "KB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->KB:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    .line 127
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    const-string v1, "MB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->MB:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    .line 128
    new-instance v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    const-string v1, "GB"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->GB:Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    .line 124
    invoke-static {}, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->$values()[Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    move-result-object v0

    sput-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->$VALUES:[Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;
    .locals 1

    .line 124
    const-class v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    return-object p0
.end method

.method public static values()[Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;
    .locals 1

    .line 124
    sget-object v0, Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->$VALUES:[Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    invoke-virtual {v0}, [Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/libs/qrcodecamera/tool/RxConstTool$MemoryUnit;

    return-object v0
.end method
