.class public Lcom/jiabaida/little_elephant/entity/BMSPasswdPairCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSPasswdPairCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSPasswdPairCMDEntity"

.field private static final cmd:C = '\u0006'

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
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSPasswdPairCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 21
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSPasswdPairCMDEntity;->cmdContent:[B

    const/4 v1, 0x6

    const/16 v2, 0x5a

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v0, 0x20

    .line 14
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSPasswdPairCMDEntity;->supportVersion:I

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

    .line 39
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSPasswdPairCMDEntity;->getCmdBaseApiString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSPasswdPairCMDEntity;->supportVersion:I

    return v0
.end method

.method public setPasswd(Ljava/lang/String;)V
    .locals 4

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 29
    new-array v1, v1, [B

    int-to-byte v2, v0

    const/4 v3, 0x0

    .line 30
    aput-byte v2, v1, v3

    .line 32
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intStrToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/entity/BMSPasswdPairCMDEntity;->setContent([B)V

    return-void
.end method
