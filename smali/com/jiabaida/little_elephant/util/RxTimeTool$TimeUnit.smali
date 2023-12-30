.class public final enum Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;
.super Ljava/lang/Enum;
.source "RxTimeTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/util/RxTimeTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

.field public static final enum DAY:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

.field public static final enum HOUR:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

.field public static final enum MIN:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

.field public static final enum MSEC:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

.field public static final enum SEC:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;


# direct methods
.method private static synthetic $values()[Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    .line 352
    sget-object v1, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->MSEC:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->SEC:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->MIN:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->HOUR:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->DAY:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 356
    new-instance v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const-string v1, "MSEC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->MSEC:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    .line 360
    new-instance v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const-string v1, "SEC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->SEC:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    .line 364
    new-instance v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const-string v1, "MIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->MIN:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    .line 368
    new-instance v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const-string v1, "HOUR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->HOUR:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    .line 372
    new-instance v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    const-string v1, "DAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->DAY:Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    .line 352
    invoke-static {}, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->$values()[Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    move-result-object v0

    sput-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->$VALUES:[Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;
    .locals 1

    .line 352
    const-class v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    return-object p0
.end method

.method public static values()[Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;
    .locals 1

    .line 352
    sget-object v0, Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->$VALUES:[Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    invoke-virtual {v0}, [Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiabaida/little_elephant/util/RxTimeTool$TimeUnit;

    return-object v0
.end method
