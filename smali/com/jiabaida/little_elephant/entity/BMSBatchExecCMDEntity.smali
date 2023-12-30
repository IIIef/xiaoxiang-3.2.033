.class public Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
.super Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;
.source "BMSBatchExecCMDEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;,
        Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$EditViewShow;,
        Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$SpinnerViewwShow;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.entity.BMSBatchExecCMDEntity"

.field public static final UNIT_A:Ljava/lang/String; = "A"

.field public static final UNIT_AH:Ljava/lang/String; = "mAH"

.field public static final UNIT_MR:Ljava/lang/String; = "mR"

.field public static final UNIT_MS:Ljava/lang/String; = "mS"

.field public static final UNIT_P:Ljava/lang/String; = "%"

.field public static final UNIT_R:Ljava/lang/String; = "R"

.field public static final UNIT_TEMP:Ljava/lang/String; = "\u2103"

.field public static final UNIT_TIME:Ljava/lang/String; = "S"

.field public static final UNIT_US:Ljava/lang/String; = "uS"

.field public static final UNIT_V:Ljava/lang/String; = "mV"


# instance fields
.field public CMDName:Ljava/lang/String;

.field private formatCMDParam:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;

.field private isRelativeEntity:Z

.field public mView:Landroid/view/View;

.field private mViewShow:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;

.field private relativeEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

.field public showVal:Ljava/lang/String;

.field public tagVal:Ljava/lang/String;

.field private unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

.field public val:F

.field public valUnit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/16 v2, 0xa5

    .line 65
    invoke-direct {p0, p1, v1, v2}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->relativeEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    .line 66
    iput-object p3, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->formatCMDParam:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;

    .line 67
    iput-object p4, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

    .line 68
    iput-object p5, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->valUnit:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->CMDName:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->isRelativeEntity:Z

    return-void
.end method

.method public constructor <init>(C[BC)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;-><init>(C[BI)V

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->isRelativeEntity:Z

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->relativeEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public formatParams([B)Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->formatCMDParam:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getContent([B)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;->format([B)Ljava/lang/Object;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

    if-eqz v0, :cond_1

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 114
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;->mill2Normal(II)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 115
    iget p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 118
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 119
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public formatParams([BI)Z
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->formatCMDParam:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->getContent([B)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;->format([B)Ljava/lang/Object;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

    if-eqz v0, :cond_1

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 134
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1, p2}, Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;->mill2Normal(II)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 135
    iget p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    goto :goto_0

    .line 137
    :cond_1
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_2

    .line 138
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 139
    iget p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    goto :goto_0

    .line 141
    :cond_2
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 143
    invoke-virtual {p0, p2}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getCmdAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.jiabaida.xiaoxiang.ble.batchCMD"

    return-object v0
.end method

.method public getCmdContent()[B
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmdContent:[B

    return-object v0
.end method

.method public getMillVal()I
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

    if-nez v0, :cond_0

    .line 153
    iget v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    float-to-int v0, v0

    return v0

    .line 155
    :cond_0
    iget v1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    invoke-interface {v0, v1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;->normal2Mill(F)I

    move-result v0

    return v0
.end method

.method public getRelativeEntity()Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->relativeEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    return-object v0
.end method

.method public getViewShow()Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->mViewShow:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;

    return-object v0
.end method

.method public isRelativeEntity()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->isRelativeEntity:Z

    return v0
.end method

.method public setContent(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->formatCMDParam:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;

    if-nez v0, :cond_0

    .line 160
    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmdContent:[B

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;->format2ByteArray(Ljava/lang/Object;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmdContent:[B

    .line 165
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmdContent:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent([B)V

    return-void
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 1

    .line 169
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    .line 171
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setVal(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-interface {v0, p1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;->normal2Mill(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->formatCMDParam:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Lcom/jiabaida/little_elephant/util/CommonUtil;->charToByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmdContent:[B

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;->format2ByteArray(Ljava/lang/Object;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmdContent:[B

    .line 187
    :goto_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->cmdContent:[B

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->setContent([B)V

    return-void
.end method

.method public setFormatCMDParam(Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->formatCMDParam:Lcom/jiabaida/little_elephant/entity/ParamFormat$FormatCMDParam;

    return-void
.end method

.method public setRelativeEntity(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->relativeEntity:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;

    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->isRelativeEntity:Z

    return-void
.end method

.method public setSettingValue()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->mViewShow:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;

    invoke-interface {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    .line 104
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->mViewShow:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;

    invoke-interface {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->mViewShow:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;

    invoke-interface {v0}, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->tagVal:Ljava/lang/String;

    return-void
.end method

.method public setUnitSwitch(Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->unitSwitch:Lcom/jiabaida/little_elephant/entity/ParamFormat$UnitSwitch;

    return-void
.end method

.method public setVal(F)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->val:F

    .line 97
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->showVal:Ljava/lang/String;

    return-void
.end method

.method public setViewShow(Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity;->mViewShow:Lcom/jiabaida/little_elephant/entity/BMSBatchExecCMDEntity$IViewShow;

    return-void
.end method
