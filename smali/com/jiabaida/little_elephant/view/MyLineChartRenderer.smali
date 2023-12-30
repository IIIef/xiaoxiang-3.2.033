.class public Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.source "MyLineChartRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;
    }
.end annotation


# instance fields
.field colors:[I

.field private isHeart:Z

.field private mCirclesBuffer:[F

.field private mHighlightCirclePaint:Landroid/graphics/Paint;

.field private mImageCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;",
            "Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;",
            ">;"
        }
    .end annotation
.end field

.field private mLineBuffer:[F

.field private noDrawLineValue:F

.field pos:[F

.field range:[I


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    const/4 p2, 0x0

    .line 31
    iput p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->noDrawLineValue:F

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 56
    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    .line 204
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 205
    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclesBuffer:[F

    .line 49
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    .line 51
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mHighlightCirclePaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)Landroid/graphics/Paint;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)Landroid/graphics/Paint;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)Landroid/graphics/Paint;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;)Landroid/graphics/Paint;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method protected drawCircles(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 209
    iget-object v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    iget-object v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 213
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclesBuffer:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v5, 0x1

    .line 214
    aput v4, v2, v5

    .line 216
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v2

    const/4 v6, 0x0

    .line 218
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 220
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 222
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCirclesEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 223
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_7

    .line 226
    :cond_0
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v8

    .line 230
    iget-object v9, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v10, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v9, v10, v7}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 232
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleRadius()F

    move-result v9

    .line 233
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleRadius()F

    move-result v10

    .line 234
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCircleHoleEnabled()Z

    move-result v11

    if-eqz v11, :cond_1

    cmpg-float v11, v10, v9

    if-gez v11, :cond_1

    cmpl-float v10, v10, v4

    if-lez v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_2

    .line 238
    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleColor()I

    move-result v11

    const v12, 0x112233

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 242
    :goto_2
    iget-object v12, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_3

    .line 243
    iget-object v12, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;

    goto :goto_3

    .line 245
    :cond_3
    new-instance v12, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;

    invoke-direct {v12, v0, v13}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;-><init>(Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$1;)V

    .line 246
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mImageCaches:Ljava/util/HashMap;

    invoke-virtual {v14, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :goto_3
    invoke-virtual {v12, v7}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->init(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 253
    invoke-virtual {v12, v7, v10, v11}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->fill(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;ZZ)V

    .line 256
    :cond_4
    iget-object v10, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v10, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v11, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v11, v11, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v10, v11

    .line 258
    iget-object v11, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v11, v11, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    :goto_4
    if-gt v11, v10, :cond_a

    .line 260
    invoke-interface {v7, v11}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v14

    if-nez v14, :cond_5

    goto :goto_7

    .line 263
    :cond_5
    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v15

    cmpl-float v15, v15, v4

    if-nez v15, :cond_7

    :cond_6
    :goto_5
    move-object/from16 v4, p1

    goto :goto_6

    .line 264
    :cond_7
    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclesBuffer:[F

    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v15, v3

    .line 265
    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclesBuffer:[F

    invoke-virtual {v14}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v14

    mul-float v14, v14, v1

    aput v14, v15, v5

    .line 267
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclesBuffer:[F

    invoke-virtual {v8, v14}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 269
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclesBuffer:[F

    aget v15, v15, v3

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v14

    if-nez v14, :cond_8

    goto :goto_7

    .line 272
    :cond_8
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclesBuffer:[F

    aget v15, v15, v3

    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclesBuffer:[F

    aget v15, v15, v5

    .line 273
    invoke-virtual {v14, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_5

    .line 276
    :cond_9
    invoke-virtual {v12, v11}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer$DataSetImageCache;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 279
    iget-object v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mCirclesBuffer:[F

    aget v16, v15, v3

    sub-float v3, v16, v9

    aget v15, v15, v5

    sub-float/2addr v15, v9

    move-object/from16 v4, p1

    invoke-virtual {v4, v14, v3, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto :goto_4

    :cond_a
    :goto_7
    move-object/from16 v4, p1

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public drawHorizontalBezier(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 14

    .line 424
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    .line 428
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v2, v3, p1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 430
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 432
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 434
    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    invoke-interface {p1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    .line 438
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    mul-float v6, v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 440
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v4, v4, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v4, v3

    :goto_0
    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v3, v3, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v5, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v5, v5, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v3, v5

    if-gt v4, v3, :cond_0

    .line 443
    invoke-interface {p1, v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v3

    .line 445
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v5

    .line 446
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v6

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v10, v5, v6

    .line 448
    iget-object v7, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 449
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    mul-float v9, v2, v0

    .line 450
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    mul-float v11, v2, v0

    .line 451
    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v12

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    mul-float v13, v2, v0

    move v8, v10

    .line 448
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v4, v4, 0x1

    move-object v2, v3

    goto :goto_0

    .line 456
    :cond_0
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawFilledEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 459
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 461
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    iget-object v8, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object v3, p0

    move-object v5, p1

    move-object v7, v1

    invoke-virtual/range {v3 .. v8}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 466
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 468
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 469
    iget-boolean p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->isHeart:Z

    if-eqz p1, :cond_2

    .line 470
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 471
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->colors:[I

    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->pos:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 470
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 475
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->cubicPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 477
    iget-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method protected drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 61
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v2

    .line 63
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawSteppedEnabled()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    .line 66
    :goto_0
    iget-object v7, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    .line 68
    iget-object v8, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v8

    .line 70
    iget-object v9, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDashedLineEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 76
    iget-object v9, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    goto :goto_1

    :cond_1
    move-object/from16 v9, p1

    .line 81
    :goto_1
    iget-object v10, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget-object v11, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-virtual {v10, v11, v1}, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->set(Lcom/github/mikephil/charting/interfaces/dataprovider/BarLineScatterCandleBubbleDataProvider;Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet;)V

    .line 84
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawFilledEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    if-lez v2, :cond_2

    .line 85
    iget-object v10, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v1, v7, v10}, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;)V

    .line 88
    :cond_2
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColors()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-le v10, v12, :cond_d

    .line 91
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    array-length v2, v2

    mul-int/lit8 v10, v6, 0x2

    if-gt v2, v10, :cond_3

    mul-int/lit8 v6, v6, 0x4

    .line 92
    new-array v2, v6, [F

    iput-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    .line 94
    :cond_3
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    :goto_2
    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v6, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v13, v13, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v6, v13

    if-gt v2, v6, :cond_15

    .line 96
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    if-nez v6, :cond_4

    goto/16 :goto_4

    .line 99
    :cond_4
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v13

    iget v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->noDrawLineValue:F

    cmpl-float v13, v13, v14

    if-nez v13, :cond_5

    goto/16 :goto_4

    .line 100
    :cond_5
    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v14

    aput v14, v13, v11

    .line 101
    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    mul-float v6, v6, v8

    aput v6, v13, v12

    .line 103
    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v6, v6, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->max:I

    const/4 v13, 0x3

    if-ge v2, v6, :cond_9

    add-int/lit8 v6, v2, 0x1

    .line 105
    invoke-interface {v1, v6}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    if-nez v6, :cond_6

    goto/16 :goto_8

    .line 108
    :cond_6
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v14

    iget v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->noDrawLineValue:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_7

    goto/16 :goto_8

    :cond_7
    if-eqz v3, :cond_8

    .line 110
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v15

    aput v15, v14, v5

    .line 111
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    aget v15, v14, v12

    aput v15, v14, v13

    .line 112
    aget v15, v14, v5

    aput v15, v14, v4

    const/4 v15, 0x5

    .line 113
    aget v16, v14, v13

    aput v16, v14, v15

    const/4 v15, 0x6

    .line 114
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v14, v15

    .line 115
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    const/4 v15, 0x7

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    mul-float v6, v6, v8

    aput v6, v14, v15

    goto :goto_3

    .line 117
    :cond_8
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v15

    aput v15, v14, v5

    .line 118
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v6

    mul-float v6, v6, v8

    aput v6, v14, v13

    goto :goto_3

    .line 122
    :cond_9
    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    aget v14, v6, v11

    aput v14, v6, v5

    .line 123
    aget v14, v6, v12

    aput v14, v6, v13

    .line 126
    :goto_3
    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    invoke-virtual {v7, v6}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 128
    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    aget v14, v14, v11

    invoke-virtual {v6, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v6

    if-nez v6, :cond_a

    goto/16 :goto_8

    .line 133
    :cond_a
    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    aget v14, v14, v5

    invoke-virtual {v6, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    aget v14, v14, v12

    .line 134
    invoke-virtual {v6, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    aget v13, v14, v13

    .line 135
    invoke-virtual {v6, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_4

    .line 139
    :cond_b
    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6, v11, v10, v13}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    :cond_c
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 148
    :cond_d
    iget-object v10, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    array-length v10, v10

    mul-int v2, v2, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    if-ge v10, v13, :cond_e

    .line 149
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    .line 153
    :cond_e
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 158
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    const/4 v4, 0x0

    :goto_5
    iget-object v10, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v10, v10, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    iget-object v13, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v13, v13, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->min:I

    add-int/2addr v10, v13

    if-gt v2, v10, :cond_13

    if-nez v2, :cond_f

    const/4 v10, 0x0

    goto :goto_6

    :cond_f
    add-int/lit8 v10, v2, -0x1

    .line 160
    :goto_6
    invoke-interface {v1, v10}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    .line 161
    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    .line 165
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v14

    iget v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->noDrawLineValue:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_12

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v14

    iget v15, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->noDrawLineValue:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_10

    goto :goto_7

    .line 169
    :cond_10
    iget-object v14, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    add-int/lit8 v15, v4, 0x1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v14, v4

    .line 170
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v16

    mul-float v16, v16, v8

    aput v16, v4, v15

    if-eqz v3, :cond_11

    .line 173
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v4, v14

    .line 174
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v16

    mul-float v16, v16, v8

    aput v16, v4, v15

    .line 175
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v16

    aput v16, v4, v14

    .line 176
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    add-int/lit8 v14, v15, 0x1

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v10

    mul-float v10, v10, v8

    aput v10, v4, v15

    .line 179
    :cond_11
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    add-int/lit8 v10, v14, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v15

    aput v15, v4, v14

    .line 180
    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v13

    mul-float v13, v13, v8

    aput v13, v4, v10

    move v4, v14

    :cond_12
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_13
    if-lez v4, :cond_15

    .line 184
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    invoke-virtual {v7, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 186
    iget-object v2, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mXBounds:Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;

    iget v2, v2, Lcom/github/mikephil/charting/renderer/BarLineScatterCandleBubbleRenderer$XBounds;->range:I

    add-int/2addr v2, v12

    mul-int v2, v2, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 188
    iget-object v3, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-boolean v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->isHeart:Z

    if-eqz v1, :cond_14

    .line 190
    iget-object v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v13, 0x0

    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v14, v4, Landroid/graphics/RectF;->top:F

    const/4 v15, 0x0

    iget-object v4, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 191
    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getContentRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->colors:[I

    iget-object v6, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->pos:[F

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 190
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 193
    :cond_14
    iget-object v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mLineBuffer:[F

    iget-object v3, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 198
    :cond_15
    :goto_8
    iget-object v1, v0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void
.end method

.method public getNoDrawLineValue()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->noDrawLineValue:F

    return v0
.end method

.method public setHeartLine(ZIII[I)V
    .locals 8

    .line 486
    iput-boolean p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->isHeart:Z

    const/4 p1, 0x3

    new-array v0, p1, [I

    .line 487
    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->range:[I

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 v2, 0x1

    aput p3, v0, v2

    const/4 v3, 0x2

    aput p2, v0, v3

    const/4 v0, 0x4

    new-array v4, v0, [F

    .line 492
    iget-object v5, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    check-cast v5, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/mikephil/charting/components/YAxis;->getAxisMaximum()F

    move-result v5

    .line 493
    iget-object v6, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    check-cast v6, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v6

    invoke-virtual {v6}, Lcom/github/mikephil/charting/components/YAxis;->getAxisMinimum()F

    move-result v6

    int-to-float v7, p4

    sub-float v7, v5, v7

    sub-float/2addr v5, v6

    div-float/2addr v7, v5

    aput v7, v4, v1

    sub-int/2addr p4, p3

    int-to-float p4, p4

    div-float/2addr p4, v5

    aget v6, v4, v1

    add-float/2addr p4, v6

    aput p4, v4, v2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p2, v5

    aget p3, v4, v2

    add-float/2addr p2, p3

    aput p2, v4, v3

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v4, p1

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 499
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->pos:[F

    .line 500
    array-length p1, p5

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->colors:[I

    const/4 p1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 503
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->colors:[I

    aget p3, p5, v1

    aput p3, p2, p1

    add-int/lit8 p3, p1, 0x1

    .line 504
    aget p4, p5, v1

    aput p4, p2, p3

    if-nez v1, :cond_0

    .line 506
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->pos:[F

    const/4 p4, 0x0

    aput p4, p2, p1

    .line 507
    aget p4, v4, v1

    aput p4, p2, p3

    goto :goto_1

    .line 509
    :cond_0
    iget-object p2, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->pos:[F

    add-int/lit8 p4, v1, -0x1

    aget p4, v4, p4

    aput p4, p2, p1

    .line 510
    aget p4, v4, v1

    aput p4, p2, p3

    :goto_1
    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setNoDrawLineValue(F)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/jiabaida/little_elephant/view/MyLineChartRenderer;->noDrawLineValue:F

    return-void
.end method
