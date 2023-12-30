.class public Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSManufacturerCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSManufacturerCMDEntity"

.field public static cmd:C = '\u00a0'

.field public static cmdContent:[B = null

.field public static rwMode:C = '\u00a5'

.field public static supportVersion:I = 0xa


# instance fields
.field public valStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 22
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 25
    sget-char v0, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->cmd:C

    sget-object v1, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->cmdContent:[B

    sget-char v2, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->rwMode:C

    invoke-direct {p0, v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    return-void
.end method

.method public constructor <init>(C[BC)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    .line 31
    sput-char p1, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->cmd:C

    .line 32
    sput-char p3, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->rwMode:C

    .line 33
    sput-object p2, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->cmdContent:[B

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 4

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->getResponseSrcDatas()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->getResponseSrcDatas()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->getResponseSrcDatas()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->getContent([B)[B

    move-result-object v0

    const-string v1, "manufacturer"

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manufacturer return src:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance p1, Ljava/lang/String;

    const-string v1, "gb2312"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->valStr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getCmdApiString()Ljava/lang/String;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->getCmdBaseApiString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 58
    sget v0, Lcom/jiabaida/little_elephant/entity/BMSManufacturerCMDEntity;->supportVersion:I

    return v0
.end method
