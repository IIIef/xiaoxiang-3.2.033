.class public Lcom/jiabaida/little_elephant/view/GaugeView;
.super Landroid/view/View;
.source "GaugeView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.jiabaida.little_elephant.view.GaugeView"


# instance fields
.field private capacityArcStartAngle:I

.field private capacityArcSweepAngle:I

.field private capacityBgColor:I

.field private capacityFgColor:I

.field private capacityFontColor:I

.field private capacityFontSize:I

.field private capacityFontVoffset:I

.field private capacityPercent:I

.field private capacityWarnPercent:I

.field private decimalSize:I

.field private endAngle:I

.field private fingerColor:I

.field private fingerLen:I

.field private fingerWidth:I

.field private fontSize:I

.field private isShowArcText:Z

.field private mArcColor:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mMinCircleColor:I

.field private mMinCircleRadius:I

.field private mPercent:I

.field private mRectHeight:I

.field private mRectWidth:I

.field private mScendArcWidth:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:I

.field private mTikeCount:I

.field private mTikeWidth:F

.field private mWidth:I

.field private mainArcColor:I

.field private mainArcFgColor:I

.field private mainArcFgWidth:I

.field private mainArcWidth:I

.field private progress:F

.field private startAngle:I

.field private tikeArcPadding:I

.field private tikeLen:I

.field private tikeNum:I

.field private unit:Ljava/lang/String;

.field private unitColor:I

.field private unitSize:I

.field private warnEndColor:I

.field private warnPercent:I

.field private warnStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/view/GaugeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lcom/jiabaida/little_elephant/view/GaugeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, -0x2d

    .line 40
    iput v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->startAngle:I

    const/16 v0, 0xe1

    .line 42
    iput v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->endAngle:I

    const/16 v0, 0xa

    .line 44
    iput v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcWidth:I

    const/16 v1, 0x1e

    .line 48
    iput v1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    const/16 v1, 0x87

    .line 52
    iput v1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeNum:I

    const/16 v2, 0xc8

    .line 54
    iput v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeLen:I

    const/16 v2, 0x14

    .line 56
    iput v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeArcPadding:I

    const/16 v3, 0x28

    .line 58
    iput v3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fingerLen:I

    .line 60
    iput v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fingerWidth:I

    const/16 v3, -0x28

    .line 89
    iput v3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityFontVoffset:I

    const/16 v3, 0x19

    .line 91
    iput v3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityWarnPercent:I

    const/16 v4, 0x2f

    .line 93
    iput v4, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityArcStartAngle:I

    const/16 v4, 0x56

    .line 94
    iput v4, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityArcSweepAngle:I

    const-string v4, ""

    .line 110
    iput-object v4, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    const/4 v4, 0x1

    .line 127
    iput-boolean v4, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->isShowArcText:Z

    .line 139
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    .line 140
    sget-object v5, Lcom/jiabaida/little_elephant/R$styleable;->PanelView:[I

    const/4 v6, 0x0

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    const/high16 p3, 0x40400000    # 3.0f

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    const/16 v5, 0x11

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcWidth:I

    const-string p2, "#7AC5CD"

    .line 145
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v5, 0xe

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcColor:I

    .line 147
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {p2, v5}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    const/16 v5, 0x10

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    const-string p2, "#00FFFF"

    .line 149
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/16 v5, 0xf

    invoke-virtual {p1, v5, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgColor:I

    const/16 p2, 0x16

    .line 151
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeNum:I

    .line 153
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {p2, v1}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    const/16 v1, 0x15

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeLen:I

    .line 155
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeArcPadding:I

    .line 157
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p2, v1}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    const/16 v1, 0xb

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fingerLen:I

    .line 159
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    const/16 p3, 0xc

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fingerWidth:I

    const-string p2, "#00BFFF"

    .line 163
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fingerColor:I

    const/16 p2, 0x13

    const/4 p3, 0x0

    .line 165
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->progress:F

    .line 167
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    const/high16 p3, 0x428c0000    # 70.0f

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    const/16 p3, 0xd

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fontSize:I

    .line 169
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    const/high16 p3, 0x42200000    # 40.0f

    invoke-static {p2, p3}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p2

    const/16 p3, 0x9

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->decimalSize:I

    const/16 p2, 0x18

    .line 171
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unit:Ljava/lang/String;

    .line 172
    iget-object p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p3, v0}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p3

    const/16 v0, 0x1a

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unitSize:I

    const-string p3, "#ffffff"

    .line 173
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, v3, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unitColor:I

    const/16 p3, 0x1c

    const/16 v0, 0x3c

    .line 175
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->warnPercent:I

    const-string p3, "#FFA500"

    .line 177
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x1d

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->warnStartColor:I

    const-string p3, "#FF0000"

    .line 179
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x1b

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->warnEndColor:I

    const/16 p3, 0x8

    .line 181
    invoke-virtual {p1, p3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityPercent:I

    const-string p3, "#FF87CEEB"

    .line 183
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityBgColor:I

    const-string p3, "#7CFC00"

    .line 185
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityFgColor:I

    .line 187
    iget-object p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {p3, v0}, Lcom/jiabaida/little_elephant/util/DimenUtils;->sp2px(Landroid/content/Context;F)I

    move-result p3

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityFontSize:I

    const-string p3, "#FFFFFF"

    .line 188
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x6

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityFontColor:I

    const-string p3, "#5FB1ED"

    .line 190
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mArcColor:I

    const-string p3, "#C9DEEE"

    .line 191
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x12

    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mMinCircleColor:I

    const/16 p3, 0x17

    const/16 v0, 0xb4

    .line 192
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mTikeCount:I

    .line 193
    invoke-virtual {p1, v6, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mTextSize:I

    .line 194
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    const/16 p1, 0x32

    .line 195
    iput p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mScendArcWidth:I

    return-void
.end method

.method private drawArcText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 11

    .line 301
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fontSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v0, -0x41800000    # -0.25f

    .line 304
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    const/4 v1, -0x1

    .line 305
    iput v1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mTextColor:I

    .line 306
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v1

    .line 310
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "00.0"

    .line 311
    iput-object v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiabaida/little_elephant/util/CommonUtil;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    const/16 v4, 0x2c

    const/16 v5, 0x2e

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    .line 317
    :cond_2
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v4, v2

    const/4 v2, 0x1

    invoke-static {v4, v5, v2}, Lcom/jiabaida/little_elephant/util/CommonUtil;->formatFloat(DI)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    .line 319
    sget-object v4, Lcom/jiabaida/little_elephant/view/GaugeView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTxt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 322
    aget-object v6, v4, v5

    invoke-virtual {p2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 323
    iget v7, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v8, v7, 0x2

    int-to-float v8, v8

    const v9, 0x3f333333    # 0.7f

    mul-float v9, v9, v6

    sub-float/2addr v8, v9

    const/4 v9, 0x2

    .line 324
    div-int/2addr v7, v9

    int-to-float v7, v7

    const/high16 v10, 0x40a00000    # 5.0f

    div-float/2addr v1, v10

    add-float/2addr v7, v1

    .line 325
    aget-object v1, v4, v5

    invoke-virtual {p1, v1, v8, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 327
    iget v1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->decimalSize:I

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 328
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 329
    array-length v0, v4

    if-ge v0, v9, :cond_3

    add-float/2addr v8, v6

    const-string v0, ".0"

    .line 330
    invoke-virtual {p1, v0, v8, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 333
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-float/2addr v8, v6

    invoke-virtual {p1, v0, v8, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unit:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "km/h"

    .line 338
    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unit:Ljava/lang/String;

    .line 340
    :cond_5
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unitSize:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 341
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unitColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 342
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/2addr v0, v9

    int-to-float v0, v0

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unit:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 343
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unit:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v2

    add-float/2addr v7, v2

    invoke-virtual {p1, v1, v0, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 345
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawCapacityFG(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 352
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityBgColor:I

    .line 353
    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityPercent:I

    const/high16 v8, -0x10000

    if-gtz v2, :cond_0

    const/high16 v1, -0x10000

    .line 356
    :cond_0
    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 357
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityArcSweepAngle:I

    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityPercent:I

    mul-int v2, v2, v1

    div-int/lit8 v2, v2, 0x64

    int-to-float v9, v2

    .line 361
    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityArcStartAngle:I

    add-int/2addr v2, v1

    int-to-float v1, v2

    sub-float v10, v1, v9

    .line 363
    new-instance v11, Landroid/graphics/RectF;

    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mHeight:I

    const/4 v12, 0x2

    div-int/2addr v1, v12

    sub-int/2addr v5, v1

    int-to-float v1, v5

    invoke-direct {v11, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 364
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityArcStartAngle:I

    int-to-float v3, v1

    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityArcSweepAngle:I

    int-to-float v1, v1

    sub-float v4, v1, v9

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 368
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v14, v3

    div-int/lit8 v3, v2, 0x2

    int-to-float v15, v3

    div-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v6, 0x3

    new-array v3, v6, [I

    const/16 v20, 0x0

    aput v20, v3, v20

    const/16 v21, 0x1

    const v22, 0x9ffffff

    aput v22, v3, v21

    iget v4, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityBgColor:I

    aput v4, v3, v12

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v19}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 371
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 373
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeLen:I

    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeArcPadding:I

    add-int/2addr v1, v2

    int-to-float v13, v1

    .line 374
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 376
    new-instance v14, Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v13, v1

    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    int-to-float v3, v2

    add-float/2addr v3, v1

    int-to-float v4, v2

    add-float/2addr v4, v1

    iget v5, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    int-to-float v15, v2

    sub-float/2addr v5, v15

    iget v15, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mHeight:I

    int-to-float v15, v15

    sub-float/2addr v15, v1

    int-to-float v1, v2

    sub-float/2addr v15, v1

    invoke-direct {v14, v3, v4, v5, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 379
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityArcStartAngle:I

    int-to-float v3, v1

    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityArcSweepAngle:I

    int-to-float v4, v1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v14

    const/4 v15, 0x3

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 384
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityPercent:I

    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityWarnPercent:I

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 388
    :cond_1
    iget v8, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityFgColor:I

    .line 391
    :goto_0
    sget-object v6, Lcom/jiabaida/little_elephant/view/GaugeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startX:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->startAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  sweep:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, 0x0

    .line 394
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v10

    move v4, v9

    move-object v11, v5

    move/from16 v5, v16

    move-object/from16 v23, v6

    move-object/from16 v6, p2

    .line 396
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 398
    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    div-int/2addr v2, v12

    int-to-float v2, v2

    new-array v5, v15, [I

    aput v20, v5, v20

    aput v22, v5, v21

    aput v8, v5, v12

    new-array v6, v15, [F

    fill-array-data v6, :array_1

    sget-object v30, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v24, v1

    move/from16 v25, v3

    move/from16 v26, v4

    move/from16 v27, v2

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    invoke-direct/range {v24 .. v30}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 401
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 402
    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object v2, v14

    move v3, v10

    move v4, v9

    move-object/from16 v6, p2

    .line 403
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 406
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 407
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-int/2addr v1, v12

    int-to-float v1, v1

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v8, v2, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 409
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 411
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->unitColor:I

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 413
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 416
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityFontSize:I

    int-to-float v1, v1

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 417
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    int-to-float v1, v1

    const v2, 0x3f53e93f

    mul-float v1, v1, v2

    float-to-double v1, v1

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double v1, v1, v9

    double-to-float v4, v1

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-static {v2, v1}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityFontVoffset:I

    int-to-float v5, v1

    const-string v2, "100%"

    move-object/from16 v1, p1

    move-object v3, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 420
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    int-to-float v1, v1

    const v2, 0x3f238e39

    mul-float v1, v1, v2

    float-to-double v1, v1

    mul-double v1, v1, v9

    double-to-float v4, v1

    .line 421
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityFontVoffset:I

    int-to-float v5, v1

    const-string v2, "0%"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 423
    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    int-to-float v1, v1

    const v2, 0x3f3d27d2

    mul-float v1, v1, v2

    float-to-double v1, v1

    mul-double v1, v1, v9

    double-to-float v4, v1

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v1, v0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityFontVoffset:I

    int-to-float v5, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f400000    # 0.75f
        0x3f666666    # 0.9f
    .end array-data
.end method

.method private getXByAngle(FFF)F
    .locals 5

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p3, v0

    const/4 v0, 0x2

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    cmpl-float v4, p3, v4

    if-ltz v4, :cond_0

    const/high16 v4, 0x42b40000    # 90.0f

    cmpg-float v4, p3, v4

    if-gez v4, :cond_0

    div-float/2addr p3, v3

    float-to-double v3, p3

    mul-double v3, v3, v1

    .line 516
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    float-to-double p2, p2

    mul-double v1, v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->doubleToFloat(DI)F

    move-result p2

    sub-float/2addr p1, p2

    return p1

    :cond_0
    div-float/2addr p3, v3

    float-to-double v3, p3

    mul-double v3, v3, v1

    .line 519
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    float-to-double p2, p2

    mul-double v1, v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->doubleToFloat(DI)F

    move-result p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getYByAngle(FFF)F
    .locals 5

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p3, v0

    const/4 v0, 0x2

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    cmpg-float v4, p3, v4

    if-lez v4, :cond_1

    cmpl-float v4, p3, v3

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p3, v3

    float-to-double v3, p3

    mul-double v3, v3, v1

    .line 532
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    float-to-double p2, p2

    mul-double v1, v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->doubleToFloat(DI)F

    move-result p2

    sub-float/2addr p1, p2

    return p1

    :cond_1
    :goto_0
    div-float/2addr p3, v3

    float-to-double v3, p3

    mul-double v3, v3, v1

    .line 528
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    float-to-double p2, p2

    mul-double v1, v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    invoke-static {p2, p3, v0}, Lcom/jiabaida/little_elephant/util/CommonUtil;->doubleToFloat(DI)F

    move-result p2

    add-float/2addr p1, p2

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 226
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 228
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcWidth:I

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    .line 229
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 230
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 231
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    iget v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v0, v3

    int-to-float v3, v3

    div-int/lit8 v4, v2, 0x2

    sub-int v4, v0, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    sub-int/2addr v5, v0

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mHeight:I

    sub-int/2addr v7, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v7, v2

    int-to-float v0, v7

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43070000    # 135.0f

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x0

    move-object v0, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 235
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    int-to-float v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 239
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mPercent:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    const/high16 v7, 0x43870000    # 270.0f

    mul-float v8, v0, v7

    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_0

    const/high16 v2, 0x43070000    # 135.0f

    const/4 v4, 0x0

    move-object v0, p1

    move v3, v8

    move-object v5, v6

    .line 246
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 248
    :cond_0
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x40400000    # 3.0f

    .line 250
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 253
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeArcPadding:I

    sub-int v9, v0, v1

    .line 254
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeLen:I

    sub-int v10, v9, v0

    .line 256
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeNum:I

    int-to-float v0, v0

    div-float/2addr v7, v0

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 257
    :goto_0
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->tikeNum:I

    if-gt v11, v0, :cond_2

    int-to-float v0, v11

    mul-float v0, v0, v7

    const/high16 v1, 0x43070000    # 135.0f

    add-float/2addr v1, v0

    const/high16 v2, 0x43340000    # 180.0f

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v8

    if-gez v0, :cond_1

    .line 263
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcFgColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 266
    :cond_1
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mainArcColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 268
    :goto_1
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float v2, v10

    invoke-direct {p0, v0, v2, v1}, Lcom/jiabaida/little_elephant/view/GaugeView;->getXByAngle(FFF)F

    move-result v3

    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, v0, v2, v1}, Lcom/jiabaida/little_elephant/view/GaugeView;->getYByAngle(FFF)F

    move-result v2

    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    int-to-float v4, v9

    invoke-direct {p0, v0, v4, v1}, Lcom/jiabaida/little_elephant/view/GaugeView;->getXByAngle(FFF)F

    move-result v5

    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, v0, v4, v1}, Lcom/jiabaida/little_elephant/view/GaugeView;->getYByAngle(FFF)F

    move-result v4

    move-object v0, p1

    move v1, v3

    move v3, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 273
    :cond_2
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fingerColor:I

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 274
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fingerWidth:I

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x42340000    # 45.0f

    sub-float/2addr v8, v0

    .line 277
    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->fingerLen:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 278
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, v0, v1, v8}, Lcom/jiabaida/little_elephant/view/GaugeView;->getXByAngle(FFF)F

    move-result v2

    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 279
    invoke-direct {p0, v0, v1, v8}, Lcom/jiabaida/little_elephant/view/GaugeView;->getYByAngle(FFF)F

    move-result v3

    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 280
    invoke-direct {p0, v1, v0, v8}, Lcom/jiabaida/little_elephant/view/GaugeView;->getXByAngle(FFF)F

    move-result v4

    iget v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 281
    invoke-direct {p0, v1, v0, v8}, Lcom/jiabaida/little_elephant/view/GaugeView;->getYByAngle(FFF)F

    move-result v5

    move-object v0, p1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    .line 278
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->isShowArcText:Z

    if-eqz v0, :cond_3

    .line 291
    invoke-direct {p0, p1, v6}, Lcom/jiabaida/little_elephant/view/GaugeView;->drawArcText(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 294
    :cond_3
    invoke-direct {p0, p1, v6}, Lcom/jiabaida/little_elephant/view/GaugeView;->drawCapacityFG(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 296
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 201
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 202
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 203
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 204
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/16 v2, 0xc8

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_0

    .line 206
    iput v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    goto :goto_0

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/jiabaida/little_elephant/util/DimenUtils;->dip2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    :goto_0
    if-ne p2, v3, :cond_1

    .line 213
    iput v1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mHeight:I

    goto :goto_1

    .line 215
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/jiabaida/little_elephant/util/DimenUtils;->dip2px(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mHeight:I

    .line 217
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "wing"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mWidth:I

    iget p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/view/GaugeView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setArcColor(I)V
    .locals 0

    .line 464
    iput p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mArcColor:I

    .line 465
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/GaugeView;->invalidate()V

    return-void
.end method

.method public setArcTextHide()V
    .locals 1

    const/4 v0, 0x0

    .line 505
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->isShowArcText:Z

    .line 506
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/GaugeView;->invalidate()V

    return-void
.end method

.method public setArcTextShow()V
    .locals 1

    const/4 v0, 0x1

    .line 500
    iput-boolean v0, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->isShowArcText:Z

    .line 501
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/GaugeView;->invalidate()V

    return-void
.end method

.method public setArcWidth(I)V
    .locals 0

    .line 494
    iput p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mScendArcWidth:I

    .line 496
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/GaugeView;->invalidate()V

    return-void
.end method

.method public setPercent(I)V
    .locals 0

    .line 434
    iput p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mPercent:I

    .line 435
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/GaugeView;->invalidate()V

    return-void
.end method

.method public setPointerColor(I)V
    .locals 0

    .line 474
    iput p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mMinCircleColor:I

    .line 476
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/GaugeView;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    .line 455
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/GaugeView;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 484
    iput p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mTextSize:I

    .line 486
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/GaugeView;->invalidate()V

    return-void
.end method

.method public setUpdateInfo(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 440
    iput p1, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mPercent:I

    .line 441
    iput p2, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->capacityPercent:I

    .line 442
    iput-object p3, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->mText:Ljava/lang/String;

    .line 443
    iput-object p4, p0, Lcom/jiabaida/little_elephant/view/GaugeView;->unit:Ljava/lang/String;

    .line 444
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/GaugeView;->invalidate()V

    return-void
.end method
