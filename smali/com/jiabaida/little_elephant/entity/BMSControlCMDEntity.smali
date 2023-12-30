.class public Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSControlCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSControlCMDEntity"

.field public static clearProtection:[B = null

.field public static clearRecord:[B = null

.field private static final cmd:C = '\n'

.field private static final cmdContent:[B

.field public static gotoDeepSleep:[B = null

.field public static gotoSleep:[B = null

.field public static openBalance:[B = null

.field public static reboot:[B = null

.field public static resetCapacity:[B = null

.field private static final rwMode:I = 0x5a


# instance fields
.field public cmdStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 21
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->cmdContent:[B

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 23
    fill-array-data v1, :array_0

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->resetCapacity:[B

    new-array v1, v0, [B

    .line 24
    fill-array-data v1, :array_1

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->clearRecord:[B

    new-array v1, v0, [B

    .line 25
    fill-array-data v1, :array_2

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->reboot:[B

    new-array v1, v0, [B

    .line 26
    fill-array-data v1, :array_3

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->clearProtection:[B

    new-array v1, v0, [B

    .line 27
    fill-array-data v1, :array_4

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->gotoSleep:[B

    new-array v1, v0, [B

    .line 28
    fill-array-data v1, :array_5

    sput-object v1, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->gotoDeepSleep:[B

    new-array v0, v0, [B

    .line 29
    fill-array-data v0, :array_6

    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->openBalance:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x3t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x6t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x7t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 34
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->cmdContent:[B

    const/16 v1, 0xa

    const/16 v2, 0x5a

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->getContent([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->returnContent:[B

    const/4 p1, 0x1

    return p1
.end method
