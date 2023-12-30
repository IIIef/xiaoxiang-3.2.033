.class public Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSFunctionCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSFunctionCMDEntity"

.field private static final cmd:C = '-'

.field private static final cmdContent:[B

.field private static final rwMode:I = 0xa5


# instance fields
.field private balanceEnable:I

.field private balanceMode:I

.field private bzEnable:I

.field private content:[B

.field private currentLimit:I

.field private fccLimit:I

.field private gpsEnable:I

.field private ledEnable:I

.field private ledNum:I

.field private loadCheckEnable:I

.field private rtcEnable:I

.field private switchEnable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 14
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->cmdContent:[B

    const/16 v1, 0x2d

    const/16 v2, 0xa5

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->switchEnable:I

    .line 30
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->loadCheckEnable:I

    .line 31
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->balanceEnable:I

    .line 32
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->balanceMode:I

    .line 33
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->ledEnable:I

    .line 34
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->ledNum:I

    .line 35
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->rtcEnable:I

    .line 36
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->fccLimit:I

    .line 37
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->currentLimit:I

    .line 38
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->gpsEnable:I

    .line 39
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->bzEnable:I

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 3

    .line 46
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->getContent([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    const/4 v0, 0x1

    .line 47
    aget-byte v1, p1, v0

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->switchEnable:I

    .line 48
    aget-byte v1, p1, v0

    shr-int/2addr v1, v0

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->loadCheckEnable:I

    .line 49
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x2

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->balanceEnable:I

    .line 50
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x3

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->balanceMode:I

    .line 51
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x4

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->ledEnable:I

    .line 52
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x5

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->ledNum:I

    .line 53
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->rtcEnable:I

    .line 54
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->fccLimit:I

    const/4 v1, 0x0

    .line 56
    aget-byte v2, p1, v1

    and-int/2addr v2, v0

    iput v2, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->currentLimit:I

    .line 57
    aget-byte v2, p1, v1

    shr-int/2addr v2, v0

    and-int/2addr v2, v0

    iput v2, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->gpsEnable:I

    .line 58
    aget-byte p1, p1, v1

    shr-int/lit8 p1, p1, 0x2

    and-int/2addr p1, v0

    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->bzEnable:I

    return v0
.end method

.method public getBalanceEnable()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->balanceEnable:I

    return v0
.end method

.method public getBalanceMode()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->balanceMode:I

    return v0
.end method

.method public getBzEnable()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->bzEnable:I

    return v0
.end method

.method public getCurrentLimit()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->currentLimit:I

    return v0
.end method

.method public getFccLimit()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->fccLimit:I

    return v0
.end method

.method public getGpsEnable()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->gpsEnable:I

    return v0
.end method

.method public getLedEnable()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->ledEnable:I

    return v0
.end method

.method public getLedNum()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->ledNum:I

    return v0
.end method

.method public getLoadCheckEnable()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->loadCheckEnable:I

    return v0
.end method

.method public getRtcEnable()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->rtcEnable:I

    return v0
.end method

.method public getSwitchEnable()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->switchEnable:I

    return v0
.end method

.method public setBalanceEnable(I)V
    .locals 2

    .line 101
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->balanceEnable:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x5

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setBalanceMode(I)V
    .locals 2

    .line 116
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->balanceMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 118
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x9

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 123
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setBzEnable(I)V
    .locals 2

    .line 221
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->bzEnable:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 223
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x5

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 228
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setCurrentLimit(I)V
    .locals 3

    .line 191
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->currentLimit:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 193
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v2, p1, v1

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v0, p1, v1

    and-int/lit8 v0, v0, -0x2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    .line 198
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setFccLimit(I)V
    .locals 2

    .line 176
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->fccLimit:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 178
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, -0x81

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 183
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setGpsEnable(I)V
    .locals 2

    .line 206
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->gpsEnable:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 213
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setLedEnable(I)V
    .locals 2

    .line 132
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->ledEnable:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x11

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 139
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setLedNum(I)V
    .locals 2

    .line 147
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->ledNum:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x21

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 153
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setLoadCheckEnable(I)V
    .locals 2

    .line 86
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->loadCheckEnable:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setRtcEnable(I)V
    .locals 2

    .line 161
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->rtcEnable:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 163
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x41

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 168
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method

.method public setSwitchEnable(I)V
    .locals 2

    .line 68
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->switchEnable:I

    .line 69
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->content:[B

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 73
    aget-byte p1, v0, v1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    goto :goto_0

    .line 76
    :cond_1
    aget-byte p1, v0, v1

    and-int/lit8 p1, p1, -0x2

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 78
    :goto_0
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSFunctionCMDEntity;->setContent([B)V

    return-void
.end method
