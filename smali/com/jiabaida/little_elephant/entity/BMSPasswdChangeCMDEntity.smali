.class public Lcom/jiabaida/little_elephant/entity/BMSPasswdChangeCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSPasswdChangeCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSPasswdChangeCMDEntity"

.field private static final cmd:C = '\u0007'

.field private static final cmdContent:[B

.field private static final rwMode:I = 0x5a


# instance fields
.field public supportVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 19
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSPasswdChangeCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSPasswdChangeCMDEntity;->cmdContent:[B

    const/4 v1, 0x7

    const/16 v2, 0x5a

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/16 v0, 0x14

    .line 14
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSPasswdChangeCMDEntity;->supportVersion:I

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

    .line 36
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSPasswdChangeCMDEntity;->getCmdBaseApiString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSPasswdChangeCMDEntity;->supportVersion:I

    return v0
.end method

.method public setPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    .line 27
    new-array v1, v1, [B

    int-to-byte v2, v0

    const/4 v3, 0x0

    .line 28
    aput-byte v2, v1, v3

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/HexConvert;->intStrToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x1

    .line 30
    invoke-static {p1, v3, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/jiabaida/little_elephant/entity/BMSPasswdChangeCMDEntity;->setContent([B)V

    return-void
.end method
