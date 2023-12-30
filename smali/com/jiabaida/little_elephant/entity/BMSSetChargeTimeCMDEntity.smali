.class public Lcom/jiabaida/little_elephant/entity/BMSSetChargeTimeCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSSetChargeTimeCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSSetChargeTimeCMDEntity"

.field private static final cmd:C = '@'

.field private static final cmdContent:[B

.field private static final rwMode:I = 0x5a


# instance fields
.field public supportVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 18
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSSetChargeTimeCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 21
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSSetChargeTimeCMDEntity;->cmdContent:[B

    const/16 v1, 0x40

    const/16 v2, 0x5a

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v0, 0x14

    .line 14
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSSetChargeTimeCMDEntity;->supportVersion:I

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getCmdApiString()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSSetChargeTimeCMDEntity;->getCmdBaseApiString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setChargeTime(I)V
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSSetChargeTimeCMDEntity;->setContent([B)V

    return-void
.end method
