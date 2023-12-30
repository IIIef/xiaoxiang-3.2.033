.class public Lcom/jiabaida/little_elephant/entity/BMSReadChargeHistoryCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSReadChargeHistoryCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSReadChargeHistoryCMDEntity"

.field private static final cmd:C = '\u00ab'

.field private static final cmdContent:[B

.field private static final rwMode:I = 0xa5


# instance fields
.field public supportVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 16
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSReadChargeHistoryCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 19
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSReadChargeHistoryCMDEntity;->cmdContent:[B

    const/16 v1, 0xab

    const/16 v2, 0xa5

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v0, 0x14

    .line 12
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSReadChargeHistoryCMDEntity;->supportVersion:I

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
