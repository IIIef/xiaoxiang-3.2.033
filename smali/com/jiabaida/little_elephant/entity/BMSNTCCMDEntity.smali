.class public Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSNTCCMDEntity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSNTCCMDEntity"

.field private static final cmd:C = '.'

.field private static final cmdContent:[B

.field private static final rwMode:I = 0xa5


# instance fields
.field private content:[B

.field private ntc1:I

.field private ntc2:I

.field private ntc3:I

.field private ntc4:I

.field private ntc5:I

.field private ntc6:I

.field private ntc7:I

.field private ntc8:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 14
    sput-object v0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->cmdContent:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->cmdContent:[B

    const/16 v1, 0x2e

    const/16 v2, 0xa5

    invoke-direct {p0, v1, v0, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc1:I

    .line 18
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc2:I

    .line 19
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc3:I

    .line 20
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc4:I

    .line 21
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc5:I

    .line 22
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc6:I

    .line 23
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc7:I

    .line 24
    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc8:I

    return-void
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->getContent([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    const/4 v0, 0x1

    .line 33
    aget-byte v1, p1, v0

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc1:I

    .line 34
    aget-byte v1, p1, v0

    shr-int/2addr v1, v0

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc2:I

    .line 35
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x2

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc3:I

    .line 36
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x3

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc4:I

    .line 37
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x4

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc5:I

    .line 38
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x5

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc6:I

    .line 39
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v0

    iput v1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc7:I

    .line 40
    aget-byte p1, p1, v0

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v0

    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc8:I

    return v0
.end method

.method public getNtc1()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc1:I

    return v0
.end method

.method public getNtc2()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc2:I

    return v0
.end method

.method public getNtc3()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc3:I

    return v0
.end method

.method public getNtc4()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc4:I

    return v0
.end method

.method public getNtc5()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc5:I

    return v0
.end method

.method public getNtc6()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc6:I

    return v0
.end method

.method public getNtc7()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc7:I

    return v0
.end method

.method public getNtc8()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc8:I

    return v0
.end method

.method public setNtc1(I)V
    .locals 2

    .line 51
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc1:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/2addr v1, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setContent([B)V

    return-void
.end method

.method public setNtc2(I)V
    .locals 2

    .line 66
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc2:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 68
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setContent([B)V

    return-void
.end method

.method public setNtc3(I)V
    .locals 2

    .line 81
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc3:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 83
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x5

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 88
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setContent([B)V

    return-void
.end method

.method public setNtc4(I)V
    .locals 2

    .line 96
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc4:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 98
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x9

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setContent([B)V

    return-void
.end method

.method public setNtc5(I)V
    .locals 2

    .line 111
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc5:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 113
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x11

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setContent([B)V

    return-void
.end method

.method public setNtc6(I)V
    .locals 2

    .line 126
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc6:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x20

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x21

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setContent([B)V

    return-void
.end method

.method public setNtc7(I)V
    .locals 2

    .line 142
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc7:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 144
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, -0x41

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 149
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setContent([B)V

    return-void
.end method

.method public setNtc8(I)V
    .locals 2

    .line 157
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->ntc8:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 159
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, -0x81

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 164
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->content:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSNTCCMDEntity;->setContent([B)V

    return-void
.end method
