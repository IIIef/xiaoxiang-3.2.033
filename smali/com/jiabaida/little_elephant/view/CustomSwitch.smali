.class public Lcom/jiabaida/little_elephant/view/CustomSwitch;
.super Landroid/view/View;
.source "CustomSwitch.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/view/CustomSwitch$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_MAX_FRACTION:F = 1.0f

.field private static final DEFAULT_WIDTH_HEIGHT_PERCENT:F = 0.38f


# instance fields
.field private closeText:Ljava/lang/String;

.field private isAnimation:Z

.field private isChecked:Z

.field private mAnimationFraction:F

.field private mBackgroundPain:Landroid/graphics/Paint;

.field private mCheckedChangeListener:Lcom/jiabaida/little_elephant/view/CustomSwitch$OnCheckedChangeListener;

.field private mCloseColor:I

.field private mCurrentColor:I

.field private mDisaboleTextPaint:Landroid/graphics/Paint;

.field private mEnableTextPaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mOpenColor:I

.field private mSlidePaint:Landroid/graphics/Paint;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWidth:I

.field private openText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/jiabaida/little_elephant/view/CustomSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/jiabaida/little_elephant/view/CustomSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, -0xff0100

    .line 51
    iput p3, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mOpenColor:I

    const v0, -0x777778

    .line 52
    iput v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCloseColor:I

    .line 53
    iput v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCurrentColor:I

    .line 70
    sget-object v1, Lcom/jiabaida/little_elephant/R$styleable;->CustomSwitch:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->openText:Ljava/lang/String;

    const/4 p2, 0x1

    .line 72
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->closeText:Ljava/lang/String;

    const/4 p2, 0x2

    .line 73
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mOpenColor:I

    const/4 p2, 0x0

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCloseColor:I

    .line 75
    iput p2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCurrentColor:I

    .line 77
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/jiabaida/little_elephant/view/CustomSwitch;I)I
    .locals 0

    .line 25
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCurrentColor:I

    return p1
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .line 134
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 135
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mHeight:I

    int-to-float v3, v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x43340000    # 180.0f

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 137
    iget v2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mWidth:I

    iget v4, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mHeight:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 138
    iget v2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mWidth:I

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    const/high16 v2, 0x43870000    # 270.0f

    .line 139
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 141
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mBackgroundPain:Landroid/graphics/Paint;

    iget v2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCurrentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mBackgroundPain:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 144
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mDisaboleTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 145
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mEnableTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mDisaboleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 147
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 148
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 149
    iget v2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double v0, v0, v4

    add-double/2addr v2, v0

    double-to-int v0, v2

    .line 151
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->openText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x437f0000    # 255.0f

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mDisaboleTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mAnimationFraction:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 154
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->openText:Ljava/lang/String;

    iget v4, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mWidth:I

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float v4, v4, v5

    int-to-float v5, v0

    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mDisaboleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->closeText:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mEnableTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mAnimationFraction:F

    sub-float/2addr v2, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 160
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->closeText:Ljava/lang/String;

    iget v2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mWidth:I

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float v2, v2, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mEnableTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawSlide(Landroid/graphics/Canvas;)V
    .locals 4

    .line 129
    iget v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mWidth:I

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 130
    div-int/lit8 v2, v1, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mAnimationFraction:F

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    div-int/lit8 v0, v1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mSlidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 4

    .line 82
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mBackgroundPain:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mBackgroundPain:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 85
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mBackgroundPain:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mDisaboleTextPaint:Landroid/graphics/Paint;

    .line 87
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mDisaboleTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 90
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mDisaboleTextPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mDisaboleTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mEnableTextPaint:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mEnableTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 97
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mEnableTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mEnableTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mSlidePaint:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mSlidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mSlidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method

.method private startCloseAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 209
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 213
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 214
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->startColorAnimation()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startColorAnimation()V
    .locals 5

    .line 218
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isChecked:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mOpenColor:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCloseColor:I

    :goto_0
    if-eqz v0, :cond_1

    .line 219
    iget v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCloseColor:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mOpenColor:I

    .line 220
    :goto_1
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 222
    new-instance v1, Lcom/jiabaida/little_elephant/view/CustomSwitch$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/view/CustomSwitch$1;-><init>(Lcom/jiabaida/little_elephant/view/CustomSwitch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startOpeAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 201
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 203
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 206
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->startColorAnimation()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isChecked:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isAnimation:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 264
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isAnimation:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 274
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isAnimation:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isAnimation:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 279
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mAnimationFraction:F

    .line 280
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->drawBackground(Landroid/graphics/Canvas;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->drawSlide(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 108
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    int-to-float p2, p1

    const v0, 0x3ec28f5c    # 0.38f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 117
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mWidth:I

    .line 118
    iput p2, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_0

    .line 195
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 174
    :cond_0
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isAnimation:Z

    if-eqz p1, :cond_1

    return v1

    .line 177
    :cond_1
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isChecked:Z

    if-eqz p1, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->startCloseAnimation()V

    const/4 p1, 0x0

    .line 179
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isChecked:Z

    .line 180
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCheckedChangeListener:Lcom/jiabaida/little_elephant/view/CustomSwitch$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 181
    invoke-interface {v0, p1}, Lcom/jiabaida/little_elephant/view/CustomSwitch$OnCheckedChangeListener;->onCheckedChanged(Z)V

    goto :goto_0

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->startOpeAnimation()V

    .line 186
    iput-boolean v1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isChecked:Z

    .line 187
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCheckedChangeListener:Lcom/jiabaida/little_elephant/view/CustomSwitch$OnCheckedChangeListener;

    if-eqz p1, :cond_3

    .line 188
    invoke-interface {p1, v1}, Lcom/jiabaida/little_elephant/view/CustomSwitch$OnCheckedChangeListener;->onCheckedChanged(Z)V

    :cond_3
    :goto_0
    return v1
.end method

.method public setChecksed(Z)V
    .locals 0

    .line 245
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->isChecked:Z

    if-eqz p1, :cond_0

    .line 247
    iget p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mOpenColor:I

    iput p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCurrentColor:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 248
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mAnimationFraction:F

    goto :goto_0

    .line 250
    :cond_0
    iget p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCloseColor:I

    iput p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCurrentColor:I

    const/4 p1, 0x0

    .line 251
    iput p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mAnimationFraction:F

    .line 253
    :goto_0
    invoke-virtual {p0}, Lcom/jiabaida/little_elephant/view/CustomSwitch;->invalidate()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/jiabaida/little_elephant/view/CustomSwitch$OnCheckedChangeListener;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/CustomSwitch;->mCheckedChangeListener:Lcom/jiabaida/little_elephant/view/CustomSwitch$OnCheckedChangeListener;

    return-void
.end method
