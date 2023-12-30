.class public Lcom/jiabaida/little_elephant/util/HardDSGFormat;
.super Ljava/lang/Object;
.source "HardDSGFormat.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;


# static fields
.field public static hardDISCurrentArray_0:[I

.field public static hardDISCurrentArray_1:[I

.field public static hardDISCurrentDelayArray:[I

.field public static hardDSGCurrentArray_0:[I

.field public static hardDSGCurrentArray_1:[I

.field public static hardDSGCurrentDelayArray:[I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isDouble:C

.field private mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mHardSCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field private mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_0

    sput-object v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentDelayArray:[I

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 13
    fill-array-data v1, :array_1

    sput-object v1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentArray_0:[I

    new-array v1, v0, [I

    .line 14
    fill-array-data v1, :array_2

    sput-object v1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentArray_1:[I

    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_3

    sput-object v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentDelayArray:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 17
    fill-array-data v1, :array_4

    sput-object v1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentArray_0:[I

    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_5

    sput-object v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentArray_1:[I

    return-void

    :array_0
    .array-data 4
        0x46
        0x64
        0xc8
        0x190
    .end array-data

    :array_1
    .array-data 4
        0x16
        0x21
        0x2c
        0x38
        0x43
        0x4e
        0x59
        0x64
    .end array-data

    :array_2
    .array-data 4
        0x2c
        0x43
        0x59
        0x6f
        0x85
        0x9b
        0xb2
        0xc8
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x14
        0x28
        0x50
        0xa0
        0x140
        0x280
        0x500
    .end array-data

    :array_4
    .array-data 4
        0x8
        0xb
        0xe
        0x11
        0x13
        0x16
        0x19
        0x1c
        0x1f
        0x21
        0x24
        0x27
        0x2a
        0x2c
        0x2f
        0x32
    .end array-data

    :array_5
    .array-data 4
        0x11
        0x16
        0x1c
        0x21
        0x27
        0x2c
        0x32
        0x38
        0x3d
        0x43
        0x48
        0x4e
        0x53
        0x59
        0x5e
        0x64
    .end array-data
.end method

.method public constructor <init>(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-class v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    iput-char v0, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->isDouble:C

    .line 36
    iput-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardSCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 37
    iput-object p2, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 38
    iput-object p3, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 39
    iput-object p4, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 40
    iput-object p5, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 41
    iput-object p6, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-void
.end method

.method public static getArrayIndex(I[I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 119
    aget v2, p1, v1

    if-ne v2, p0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public format([B)Ljava/lang/Integer;
    .locals 8

    const/4 v0, 0x0

    .line 49
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x7

    .line 50
    aget-byte v2, p1, v0

    ushr-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x3

    const/4 v3, 0x1

    .line 51
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0xf

    .line 52
    aget-byte v5, p1, v3

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x7

    .line 54
    iget-object v6, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 55
    iget-object v6, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 56
    iget-object v6, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 57
    iget-object v6, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardSCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 59
    iget-object v6, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    aget-byte p1, p1, v0

    ushr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v3

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 61
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    const/4 v6, 0x0

    cmpl-float p1, p1, v6

    if-nez p1, :cond_1

    .line 63
    iput-char v0, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->isDouble:C

    .line 64
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentArray_0:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 66
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentArray_0:[I

    aget v0, v0, v4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 70
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    goto :goto_0

    .line 74
    :cond_1
    iput-char v3, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->isDouble:C

    .line 75
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    cmpl-float p1, p1, v6

    if-eqz p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentArray_1:[I

    aget v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 77
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentArray_1:[I

    aget v0, v0, v4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 81
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    invoke-virtual {p1, v6}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resistor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mSenseResistorCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDISCurrentDelayArray:[I

    aget v0, v0, v5

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 87
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardSCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    sget-object v0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentDelayArray:[I

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 89
    sget-object p1, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->hardDSGCurrentDelayArray:[I

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic format([B)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->format([B)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public format2ByteArray(Ljava/lang/Object;)[B
    .locals 3

    .line 95
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const-string v0, "2"

    iput-object v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const-string v0, "3"

    iput-object v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    .line 99
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iput v0, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    .line 103
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object p1, p1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDSGOverCurrentCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v0, v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardDisOCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v1, v1, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mHardSCDelayCMD:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget-object v2, v2, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    .line 108
    iget-object v2, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->mDoubleHardValCmd:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    iget v2, v2, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr p1, v1

    .line 110
    iget-object v1, p0, Lcom/jiabaida/little_elephant/util/HardDSGFormat;->TAG:Ljava/lang/String;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    return-object p1
.end method
