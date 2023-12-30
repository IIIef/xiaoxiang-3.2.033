.class public Lcom/jiabaida/little_elephant/util/HardTimeFormat;
.super Ljava/lang/Object;
.source "HardTimeFormat.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;


# static fields
.field public static hardCellOVDelays:[I

.field public static hardCellUVDelays:[I

.field public static hardSCRTime:[I


# instance fields
.field private hardCellLVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private hardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 8
    fill-array-data v1, :array_0

    sput-object v1, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellOVDelays:[I

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_1

    sput-object v0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellUVDelays:[I

    const/16 v0, 0x6f

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_2

    sput-object v0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardSCRTime:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
        0x8
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0x60
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
    .end array-data
.end method

.method public constructor <init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 24
    iput-object p3, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellLVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 25
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-void
.end method


# virtual methods
.method public format([B)Ljava/lang/Integer;
    .locals 6

    const/4 v0, 0x0

    .line 31
    aget-byte v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    and-int/lit8 v1, v1, 0x3

    .line 32
    aget-byte v0, p1, v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    const/4 v2, 0x1

    .line 33
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 35
    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 36
    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellLVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 37
    iget-object v4, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    if-eqz v4, :cond_0

    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 39
    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 41
    :cond_0
    iget-object v3, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    sget-object v4, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellOVDelays:[I

    aget v1, v4, v1

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 42
    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellLVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    sget-object v3, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellUVDelays:[I

    aget v0, v3, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 44
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic format([B)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->format([B)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public format2ByteArray(Ljava/lang/Object;)[B
    .locals 2

    .line 50
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->mSCReleaseTimeCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 51
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellOVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/HardTimeFormat;->hardCellLVDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 53
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    return-object p1
.end method
