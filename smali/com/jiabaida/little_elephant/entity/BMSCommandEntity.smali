.class public abstract Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.super Ljava/lang/Object;
.source "BMSCommandEntity.java"


# static fields
.field public static final ACTION_COMMAND_RETURN_BASE:Ljava/lang/String; = "com.jiabaida.xiaoxiang.ble."

.field public static final BASE_BYTE_LEN:I = 0x7

.field public static final CMD_END:I = 0x77

.field public static final CMD_START:I = 0xdd

.field public static final COMMAND_SENDABLE:C = '\u0000'

.field public static final READ_MODE:I = 0xa5

.field public static final READ_STATE_END:C = '\u0003'

.field public static final READ_STATE_READING:C = '\u0002'

.field public static final READ_STATE_WAIT:C = '\u0001'

.field public static final RESPONSE_DATA_ERROR:I = -0x1

.field public static final RESPONSE_SUCCESS:I = 0x0

.field public static final RESPONSE_TIMEOUT:I = -0x2

.field public static final RESPONSE_UNRESPONSE:I = -0x2710

.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSCommandEntity"

.field public static final WRITE_MODE:I = 0x5a


# instance fields
.field private callbackID:I

.field public cmd:C

.field public cmdApi:[B

.field public cmdApiString:Ljava/lang/String;

.field public cmdBaseApi:[B

.field public cmdContent:[B

.field protected cmdTryTimes:I

.field public contentLength:C

.field public lastSendTime:J

.field protected mCmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

.field public readState:C

.field private responseStatus:I

.field protected responseTimeout:I

.field public responseable:Z

.field protected retryTime:I

.field public returnContent:[B

.field private rwMode:I

.field private srcDatas:[B

.field public supportVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    const/16 v1, 0xa

    .line 50
    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->supportVersion:I

    .line 59
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdTryTimes:I

    const/4 v0, 0x3

    .line 61
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->retryTime:I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->responseable:Z

    const/16 v0, 0x7d0

    .line 65
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->responseTimeout:I

    return-void
.end method

.method public constructor <init>(C[BI)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    const/16 v1, 0xa

    .line 50
    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->supportVersion:I

    .line 59
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdTryTimes:I

    const/4 v0, 0x3

    .line 61
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->retryTime:I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->responseable:Z

    const/16 v0, 0x7d0

    .line 65
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->responseTimeout:I

    .line 79
    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    .line 80
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdContent:[B

    .line 81
    array-length p1, p2

    int-to-char p1, p1

    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->contentLength:C

    .line 82
    iput p3, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->rwMode:I

    .line 83
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->calCmdApi()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdApi:[B

    .line 84
    array-length p2, p1

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdApiString:Ljava/lang/String;

    .line 85
    sget-object p2, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkSum(C[BI)[B
    .locals 5

    .line 199
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p0, p0, 0xff

    add-int/2addr p2, p0

    add-int/2addr v3, p2

    not-int p0, v3

    const/4 p1, 0x1

    add-int/2addr p0, p1

    .line 206
    invoke-static {p0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->intToByteArray(I)[B

    move-result-object p0

    .line 207
    array-length p2, p0

    const/4 v0, 0x2

    sub-int/2addr p2, v0

    aget-byte p2, p0, p2

    .line 208
    array-length v2, p0

    sub-int/2addr v2, p1

    aget-byte p0, p0, v2

    new-array v0, v0, [B

    aput-byte p2, v0, v1

    aput-byte p0, v0, p1

    return-object v0
.end method


# virtual methods
.method protected calCmdApi()[B
    .locals 8

    .line 142
    iget-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    iget-object v1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdContent:[B

    iget-char v2, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->contentLength:C

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->checkSum(C[BI)[B

    move-result-object v0

    .line 143
    iget-char v1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->contentLength:C

    add-int/lit8 v2, v1, 0x7

    new-array v3, v2, [B

    const/16 v4, -0x23

    const/4 v5, 0x0

    .line 144
    aput-byte v4, v3, v5

    .line 145
    iget v4, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->rwMode:I

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    .line 146
    iget-char v4, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    int-to-byte v4, v4

    const/4 v7, 0x2

    aput-byte v4, v3, v7

    int-to-byte v4, v1

    const/4 v7, 0x3

    .line 147
    aput-byte v4, v3, v7

    .line 148
    iget-object v4, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdContent:[B

    const/4 v7, 0x4

    invoke-static {v4, v5, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-char v1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->contentLength:C

    add-int/2addr v1, v7

    array-length v4, v0

    invoke-static {v0, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v6

    const/16 v0, 0x77

    .line 150
    aput-byte v0, v3, v2

    return-object v3
.end method

.method public checkSum([B)Z
    .locals 10

    const/4 v0, 0x2

    .line 213
    aget-byte v1, p1, v0

    int-to-char v1, v1

    const/4 v2, 0x3

    .line 214
    aget-byte v3, p1, v2

    add-int/lit8 v4, v3, 0x4

    const/4 v5, 0x4

    .line 215
    invoke-static {p1, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 217
    array-length v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    aget-byte v9, v4, v7

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v1, 0xff

    add-int/2addr v3, v1

    add-int/2addr v8, v3

    not-int v1, v8

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 224
    invoke-static {v1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->intToByteArray(I)[B

    move-result-object v1

    .line 225
    array-length v4, v1

    sub-int/2addr v4, v0

    aget-byte v4, v1, v4

    .line 226
    array-length v5, v1

    sub-int/2addr v5, v3

    aget-byte v1, v1, v5

    .line 227
    array-length v5, p1

    sub-int/2addr v5, v2

    aget-byte v2, p1, v5

    if-ne v4, v2, :cond_1

    array-length v2, p1

    sub-int/2addr v2, v0

    aget-byte p1, p1, v2

    if-ne v1, p1, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method public clearCmdTry()V
    .locals 1

    const/4 v0, 0x0

    .line 303
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdTryTimes:I

    return-void
.end method

.method public cmdTryEnable()Z
    .locals 3

    .line 295
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdTryTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdTryTimes:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract formatParams([B)Z
.end method

.method public getCMDResponse()Lcom/jiabaida/little_elephant/entity/ICMDResponse;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->mCmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-object v0
.end method

.method public getCallbackID()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->callbackID:I

    return v0
.end method

.method public getCmd()C
    .locals 1

    .line 91
    iget-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    return v0
.end method

.method public getCmdAction()Ljava/lang/String;
    .locals 2

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.jiabaida.xiaoxiang.ble."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdApiString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmdApi()[B
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdApi:[B

    return-object v0
.end method

.method public getCmdApiStr()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdApiString:Ljava/lang/String;

    return-object v0
.end method

.method protected getCmdApiString()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdApiString:Ljava/lang/String;

    return-object v0
.end method

.method protected getCmdBaseApiString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x23

    aput-byte v3, v1, v2

    .line 176
    iget v2, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->rwMode:I

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    .line 177
    iget-char v2, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 178
    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmdBaseReadAction()Ljava/lang/String;
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.jiabaida.xiaoxiang.ble."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdBaseReadAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCmdBaseReadApiString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x23

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, -0x5b

    aput-byte v3, v1, v2

    .line 158
    iget-char v2, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 160
    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmdBaseWriteAction()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.jiabaida.xiaoxiang.ble."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->getCmdBaseWriteApiString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCmdBaseWriteApiString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, -0x23

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x5a

    aput-byte v3, v1, v2

    .line 167
    iget-char v2, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmd:C

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    .line 169
    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmdTryTimes()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdTryTimes:I

    return v0
.end method

.method public getContent([B)[B
    .locals 2

    .line 257
    array-length v0, p1

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public getMode()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->rwMode:I

    return v0
.end method

.method public getResponseSrcDatas()[B
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->srcDatas:[B

    return-object v0
.end method

.method public getResponseStatus()I
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->srcDatas:[B

    if-nez v0, :cond_0

    .line 242
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->responseStatus:I

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 245
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getResponseTimeout()I
    .locals 1

    .line 311
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->responseTimeout:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->supportVersion:I

    return v0
.end method

.method public readComplete()V
    .locals 1

    const/4 v0, 0x3

    .line 270
    iput-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    return-void
.end method

.method public setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->mCmdResponse:Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    return-void
.end method

.method public setContent([B)V
    .locals 1

    .line 131
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdContent:[B

    .line 132
    array-length p1, p1

    int-to-char p1, p1

    iput-char p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->contentLength:C

    .line 133
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->calCmdApi()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdApi:[B

    .line 134
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdApiString:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 110
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->rwMode:I

    .line 111
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->calCmdApi()[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdApi:[B

    .line 112
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/util/HexConvert;->byte2HexStr([BI)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->cmdApiString:Ljava/lang/String;

    return-void
.end method

.method public setReadMode()V
    .locals 1

    const/16 v0, 0xa5

    .line 122
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->setMode(I)V

    return-void
.end method

.method public setResonseStatus(I)V
    .locals 0

    .line 253
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->responseStatus:I

    return-void
.end method

.method public setResponseSrcDatas([B)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->srcDatas:[B

    return-void
.end method

.method public setWriteMode()V
    .locals 1

    const/16 v0, 0x5a

    .line 126
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->setMode(I)V

    return-void
.end method

.method public startRead()V
    .locals 1

    const/4 v0, 0x2

    .line 266
    iput-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    return-void
.end method

.method public startSend()V
    .locals 2

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->lastSendTime:J

    const/4 v0, 0x1

    .line 262
    iput-char v0, p0, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;->readState:C

    return-void
.end method
