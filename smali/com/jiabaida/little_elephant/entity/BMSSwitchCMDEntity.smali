.class public Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSSwitchCMDEntity.java"


# static fields
.field public static CHARGE:B = 0x1t

.field public static CLOSE:B = 0x1t

.field public static DISCHARGE:B = 0x0t

.field public static OPEN:B = 0x0t

.field public static PREDISCHARGE:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSSwitchCMDEntity"

.field public static cmd:C = '\u00fb'

.field public static cmdContent:[B = null

.field public static rwMode:I = 0x5a


# instance fields
.field public supportVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 22
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    sget-char v0, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->cmd:C

    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->cmdContent:[B

    sget v2, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->rwMode:I

    invoke-direct {p0, v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v0, 0x14

    .line 12
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->supportVersion:I

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getVersion()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->supportVersion:I

    return v0
.end method

.method public setContent(BB)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    aput-byte p2, v0, p1

    .line 38
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSSwitchCMDEntity;->setContent([B)V

    return-void
.end method
